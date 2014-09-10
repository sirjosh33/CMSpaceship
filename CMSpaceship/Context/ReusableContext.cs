using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Capsule.Data;

namespace CMSpaceship.Context
{
	public class ReusableContext : DbContext
	{
		public ReusableContext()
			: base(Properties.Settings.Default.SqlLive)
		{

		}
	}

    public class AuthenticationResult
    {

    }
}