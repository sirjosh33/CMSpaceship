using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMSpaceship.Context;
using Capsule.Data.Tables;
using System.Data.Linq;
using Ion.Data.Linq;
using Ion.aspnet.Binding;



namespace CMSpaceship
{
	public partial class _default : BindablePage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                DataContext = new Contact();
            }

            
            //using (ReusableContext context = new ReusableContext())
            //{
                /*Contact c = new Contact();
                c.FirstName = "josh";                
                c.LastName = "Krueger";
                c.Email = "joshuadkrueger@gmail.com";
                context.SaveChanges(c);
                 */

              //  Contact c = context.Contacts.Find(1L);
                

                //lookup record
                /*
                if (c != null)
                {

                }
                 */
                
            //}
		}

        protected void btn_Click(object sender, EventArgs e)
        {
            PullDataContextFromPage();
            using (ReusableContext context = new ReusableContext())
            {
                context.SaveChanges((Contact)DataContext);
            }
        }
	}
}
