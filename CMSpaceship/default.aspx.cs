using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMSpaceship.Context;
using Capsule.Data.Tables;
using SkyGroundLabs.Data.Entity;
using SkyGroundLabs.Data.Entity.Mapping;
using SkyGroundLabs.aspnet.Binding;
using SkyGroundLabs.Reflection;
using Capsule.Data;
using SkyGroundLabs.Cryptography;


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
