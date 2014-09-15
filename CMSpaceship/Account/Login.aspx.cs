using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMSpaceship.Context;
using Capsule.Data;
using Capsule.Data.Tables;

namespace CMSpaceship.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //DataContext = new Contact();
            }
        }

        private void _login(string username, string password)
        {
            using (var context = new AuthenticateFunctions())
            {
                
                DbContextJosh.AuthenticationResult result = context.Validate(username.ToUpper(), password, Properties.Settings.Default.SecurityPassphrase);

                if (result == AuthenticateFunctions.AuthenticationResult.Pass)
                {
                    var user = context._getUser(username.ToUpper()); 
                    Session["UserID"] = user.ID;
                    Response.Redirect("~/default.aspx");
                }
                else if (result == DbContextJosh.AuthenticationResult.AttemptsExceeded)
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