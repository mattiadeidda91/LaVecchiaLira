using System;
using System.Configuration;
using System.Web.Configuration;

namespace LaVecchiaLira.DAL
{
    public static class Utility
    {
        public static String GetConnectionString()
        {
            String connString = String.Empty;
            if (ConfigurationManager.ConnectionStrings["LaVecchiaLira"] != null)
                connString = ConfigurationManager.ConnectionStrings["LaVecchiaLira"].ConnectionString;

            return connString;
        }

        public static String GetConnectionString(String appName)
        {
            String connString = String.Empty;

            Configuration conf = WebConfigurationManager.OpenWebConfiguration("/", appName);

            if (conf.ConnectionStrings.ConnectionStrings["LaVecchiaLira"] != null)
                connString = conf.ConnectionStrings.ConnectionStrings["LaVecchiaLira"].ConnectionString;

            return connString;
        }
    }
}