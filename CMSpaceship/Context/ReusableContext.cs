using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capsule.Data;
using SkyGroundLabs.Data.Entity;


namespace CMSpaceship.Context
{
	public class ReusableContext : DataContext
	{
		public ReusableContext()
			: base(Properties.Settings.Default.SqlLive)
		{

		}
	}
}