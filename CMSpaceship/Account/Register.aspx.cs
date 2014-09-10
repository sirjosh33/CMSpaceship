using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SkyGroundLabs.aspnet.Binding;
using CMSpaceship.Context;
using Capsule.Data.Tables;
using SkyGroundLabs.Cryptography;
using Capsule.Data;

namespace CMSpaceship.Account
{
    public partial class Register : BindablePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataContext = new Contact();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            PullDataContextFromPage();
            using (ReusableContext context = new ReusableContext())
            {
                Contact contact = (Contact)DataContext;
                contact.Password = CryptographyServices.Encrypt(btxtPassword.Text,Properties.Settings.Default.SecurityPassphrase);
                context.SaveChanges((contact));
                
            }
        }
    }
}