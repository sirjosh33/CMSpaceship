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
    }

    public class AuthenticateFunctions : ReusableContext
        {
            public string UN { get; set; }
            public string PW { get; set; }
            public string PP { get; set; }

            public bool Validate(string username, string password, string passphrase)
            {
                string UN = username;
                string PW = password;
                string PP = passphrase;
                string HeldPass;

                Contact contact = new Contact();
                contact.Password = CryptographyServices.Decrypt(password,Properties.Settings.Default.SecurityPassphrase);
               

                bool result = false;

                return result;
            }
            //Validate returns a type of AuthenticationResult
            public AuthenticationResult Validate(string username,string unEncryptedPassword,string passphraseKey,KeySize keySize = KeySize._256,int maxAttempts = 3)
            {
                User user = _getUser(username);
                // Make Sure User Exists
                if (user == null)
                {
                    return AuthenticationResult.UsernameDoesntExist
                }

                // Check Attemps
                if (user.LoginAttempts >= maxAttempts)
                {
                    return AuthenticationResult.AttemptsExceeded;
                }

                // Check for password match
                if (unEncryptedPassword != CryptographyServices.Decrypt(user.Password, passphraseKey, keySize))
                {
                    user.LoginAttempts++;
                    user.IsLocked = user.LoginAttempts >= maxAttempts ? true : false;
                    _context.SaveChanges(user);
                    return AuthenticationResult.PasswordIncorrect;
                }

                // need to reset the failed attempts
                user.LoginAttempts = 0;
                user.IsLocked = false;
                user.LastAuthenticationDate = DateTime.Now;
                _context.SaveChanges(user);
                return AuthenticationResult.Pass;

            }
        }
}