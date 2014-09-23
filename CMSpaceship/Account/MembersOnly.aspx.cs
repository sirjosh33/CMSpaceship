using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capsule.Data;
using SkyGroundLabs.Data.Entity.Mapping;
using SkyGroundLabs.aspnet.Binding;
using System.Web.Security;
using CMSpaceship.Account;
using Capsule.Data.Tables;
using CMSpaceship.Context;
using SkyGroundLabs.Cryptography;


namespace CMSpaceship.Account
{
    public partial class MembersOnly : BindablePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (ReusableContext dbContext = new ReusableContext())
            {
                var userID = Convert.ToInt64(Session["UserID"]);
                
                Contact contact = dbContext.Contacts.SingleOrDefault(x => x.ID == userID);
                JoshLog.Text = Convert.ToString("Welcome" + contact.FirstName + " " + contact.LastName);
                
                
            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void LoginStatus1_Logout(object sender, LoginCancelEventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("/admin/login.aspx");
            
        }

        protected void SubmitContact_Click(object sender, EventArgs e)
        {
            PullDataContextFromPage();
            using (ReusableContext dbContext = new ReusableContext())
            {
                var userID = Convert.ToInt64(Session["UserID"]);

                var assignedCrewIDs = dbContext.Contacts.Where(w => w.ID == userID).Select(w => w.ID).ToList();
                Contact contact = (Contact)DataContext;
                contact.AssignedToID = (int)userID;
                dbContext.SaveChanges((contact));

            }
        }
    }

}