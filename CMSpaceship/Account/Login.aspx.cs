using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMSpaceship.Context;

namespace CMSpaceship.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void _login(string username, string password)
        {
            using (var context = new ReusableContext())
            {
                AuthenticationResult result = context.AuthenticateFunctions.Validate(
                username.ToUpper(),
                password,
                Properties.Settings.Default.Passphrase);

                if (result == AuthenticationResult.Pass)
                {
                    var user = context.UserFunctions.GetUser(username.ToUpper());
                    Session["UserID"] = user.ID;
                    Response.Redirect("~/Account/Home.aspx");
                }
                else if (result == AuthenticationResult.AttemptsExceeded)
                {
                    lblLoginFail.Text = "Account Locked";
                }
                else
                {
                    lblLoginFail.Text = "Username/Password Incorrect";
                }
            }
        }
    }
}