using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capsule;
using SkyGroundLabs.Data.Entity.Mapping;
using SkyGroundLabs.aspnet.Binding;
using Capsule.Data;
using CMSpaceship.Context;
using SkyGroundLabs.Cryptography;
using Capsule.Data.Tables;


namespace CMSpaceship
{
    public partial class WEBFORMDBTEST : BindablePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void GetData()
        {
            ReusableContext dbContext = new ReusableContext();
            GridView1.DataSource = dbContext.Contacts.ToList();
            GridView1.DataBind();
        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            GetData();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (ReusableContext dbContext = new ReusableContext())
            {
                Contact contact = new Contact
                {
                    FirstName = "Tim",
                    LastName = "t",
                    Classification = 2
                };

                //dbContext.Contacts.
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (ReusableContext dbContext = new ReusableContext())
            {
                Contact contact = dbContext.Contacts.SingleOrDefault(x => x.ID == 2);
                contact.Email = "lanakrueger@gmail.com";
                dbContext.SaveChanges((contact));
            }
            GetData();
        }
    }
}