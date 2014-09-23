using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capsule.Data;
using Capsule.Data.Tables;
using SkyGroundLabs.Cryptography;
using System.Data.Entity;

namespace CMSpaceship.Context
{
    public class ReusableContext : DbContextJosh
    {
        public ReusableContext()
            : base(Properties.Settings.Default.SqlLive)
        {
           
        }

        public Contact _getUser(string username)
        {
            using(var context = new ReusableContext())
            {
                    var contact = context.Contacts.Where(w => w.Username.ToUpper() == username.ToUpper()).FirstOrDefault();
                    return contact;
            }
        }
    }

    public class AuthenticateFunctions : ReusableContext
    {
        //Validate returns a type of AuthenticationResult
        public AuthenticationResult Validate(string username, string unEncryptedPassword, string passphraseKey, KeySize keySize = KeySize._256, int maxAttempts = 3)
        {
            Contact user = _getUser(username);

            // Make Sure User Exists
            if (user == null)
            {
                return AuthenticationResult.UsernameDoesntExist;
            }

            // Check Attemps
            if (user.LoginAttempts >= maxAttempts)
            {
                return AuthenticationResult.AttemptsExceeded;
            }

            // Check for password match
            var context = new ReusableContext();
            if (unEncryptedPassword != CryptographyServices.Decrypt(user.Password, passphraseKey, keySize))
            {
                user.LoginAttempts++;
                user.IsLocked = user.LoginAttempts >= maxAttempts ? true : false;
                
                context.SaveChanges(user);
                return AuthenticationResult.PasswordIncorrect;
            }

            // need to reset the failed attempts
            user.LoginAttempts = 0;
            user.IsLocked = false;
            user.LastAuthenticationDate = DateTime.Now;
            context.SaveChanges(user);
            return AuthenticationResult.Pass;
        }
    }
}