using LaVecchiaLira.DAL;
using System;
using System.Data;
using System.Web.UI;

namespace LaVecchiaLira.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    LoadMenu();
                    LoadGallery();
                    LoadSpecials();
                    LoadEvents();
                }
                catch(Exception ex) 
                { 
                    Console.WriteLine(ex.ToString());
                } 
            }
        }

        public void LoadGallery()
        {
            DataTable dt = DBOperations.GetImagesByVisibility();
            rpt_gallery.DataSource = dt;
            rpt_gallery.DataBind();
        }

        public void LoadEvents()
        {
            DataTable dt = DBOperations.GetEventsByVisibility();
            rpt_events.DataSource = dt;
            rpt_events.DataBind();
        }

        public void LoadSpecials()
        {
            DataTable dt = DBOperations.GetSpecialsByVisibility();
            rpt_specials_nav.DataSource = dt;
            rpt_specials_nav.DataBind();
            rpt_specials.DataSource = dt;
            rpt_specials.DataBind();
        }

        public void LoadMenu()
        {
            DataTable dt = DBOperations.GetFoods();
            rpt_menu.DataSource = dt;
            rpt_menu.DataBind();
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        public string CheckValue(object data)
        {
            string ret = string.Empty;

            try
            {
                if (data == null)
                {
                    ret = "hidden";
                }
                else
                {
                    if (data.ToString() == String.Empty)
                        ret = "hidden";
                }
            }
            catch
            {
                ret = "hidden";
            }

            return ret;
        }

        public string GetAlt(object id, string type)
        {
            return type + "_" + id.ToString();
        }
    }
}