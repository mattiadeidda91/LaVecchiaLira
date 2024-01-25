using LaVecchiaLira.DAL;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaVecchiaLira.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error.InnerHtml = "";
            success.InnerHtml = "";

            if (Page.IsPostBack && loginSection.Visible)
            {
                bool access = login();
                if (access)
                {
                    populateDllSections();
                }
            }
        }

        private bool login()
        {
            bool successResult = false;

            try
            {
                string userName = username.Value;
                string userPassword = password.Value;

                if (!String.IsNullOrEmpty(userName) || !String.IsNullOrEmpty(userPassword))
                {
                    if (DBOperations.UserAuthentication(userName, userPassword, out var id))
                    {
                        successResult = true;
                        resultAuthentication.InnerText = "";
                        loginSection.Visible = false;
                        customSection.Visible = true;
                    }
                    else
                        resultAuthentication.InnerText = "Email o Password non corrette";
                }
            }
            catch (Exception ex)
            {
                resultAuthentication.InnerText = ex.Message + "\n" + ex.StackTrace;
            }

            return successResult;
        }

        private void populateDllSections()
        {
            try
            {
                DataTable dt = DBOperations.GetSections();

                foreach(DataRow r in dt.Rows)
                {
                    ddlSections.Items.Add(new ListItem(r["Section"].ToString(), r["Section"].ToString()));
                }
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        private void loadTableImages()
        {
            try
            {
                DataTable dt = DBOperations.GetImages();
                rpt_tableImages.DataSource = dt;
                rpt_tableImages.DataBind();
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        private void loadTableFoods()
        {
            try
            {
                DataTable dt = DBOperations.GetFoods();
                rpt_tableFoods.DataSource = dt;
                rpt_tableFoods.DataBind();
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        private void loadTableSpecials()
        {
            try
            {
                DataTable dt = DBOperations.GetSpecials();
                rpt_tableSpecials.DataSource = dt;
                rpt_tableSpecials.DataBind();
            }
            catch (Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        private void loadTableEvents()
        {
            try
            {
                DataTable dt = DBOperations.GetEvents();
                rpt_tableEvents.DataSource = dt;
                rpt_tableEvents.DataBind();
            }
            catch (Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        protected void ddlSections_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = ddlSections.SelectedValue;

            switch (value)
            {
                case "Galleria":
                    gallerySection.Visible = true;
                    menuSection.Visible = false;
                    specialsSection.Visible = false;
                    eventSection.Visible = false;
                    loadTableImages();
                    break;
                case "Specialita":
                    gallerySection.Visible = false;
                    menuSection.Visible = false;
                    specialsSection.Visible = true;
                    eventSection.Visible = false;
                    loadTableSpecials();
                    break;
                case "Eventi":
                    gallerySection.Visible = false;
                    menuSection.Visible = false;
                    specialsSection.Visible = false;
                    eventSection.Visible = true;
                    loadTableEvents();
                    break;
                case "Menu":
                    gallerySection.Visible = false;
                    menuSection.Visible = true;
                    specialsSection.Visible = false;
                    eventSection.Visible = false;
                    loadTableFoods();
                    break;
                default:
                    gallerySection.Visible = false;
                    menuSection.Visible = false;
                    specialsSection.Visible = false;
                    eventSection.Visible = false;
                    break;
            }
        }

        protected void importFile_Click(object sender, EventArgs e)
        {
            try
            {
                if (fileUpload.HasFile)
                {
                    string name = fileUpload.FileName;
                    byte[] buffer = fileUpload.FileBytes;
                    string description = fileDesc.Value;
                    bool visibility = fileVis.Checked;

                    if(DBOperations.SaveImage(buffer, name, description, visibility))
                    {
                        success.InnerHtml = "Immagine salvata correttamente!";
                        loadTableImages();
                    }
                    else
                        error.InnerHtml = "Immagine non salvata!";
                }
                else
                    error.InnerHtml = "File non caricato!";
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        protected void deleteImage_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument.ToString();

            if (!string.IsNullOrEmpty(id))
            {
                if (DBOperations.DeleteImage(Convert.ToInt32(id)))
                {
                    success.InnerHtml = "Immagine cancellata correttamente!";
                    loadTableImages();
                }
                else
                    error.InnerHtml = "Immagine non cancellata!";
            }
        }

        protected void deleteFood_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument.ToString();

            if (!string.IsNullOrEmpty(id))
            {
                if (DBOperations.DeleteFood(Convert.ToInt32(id)))
                {
                    success.InnerHtml = "Piatto cancellato correttamente!";
                    loadTableFoods();
                }
                else
                    error.InnerHtml = "Piatto non cancellato!";
            }
        }

        protected void deleteEvent_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument.ToString();

            if (!string.IsNullOrEmpty(id))
            {
                if (DBOperations.DeleteEvent(Convert.ToInt32(id)))
                {
                    success.InnerHtml = "Evento cancellato correttamente!";
                    loadTableEvents();
                }
                else
                    error.InnerHtml = "Evento non cancellato!";
            }
        }

        protected void deleteSpecials_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument.ToString();

            if (!string.IsNullOrEmpty(id))
            {
                if (DBOperations.DeleteSpecials(Convert.ToInt32(id)))
                {
                    success.InnerHtml = "Specialità cancellata correttamente!";
                    loadTableSpecials();
                }
                else
                    error.InnerHtml = "Specialità non cancellata!";
            }
        }

        protected void editImage_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = (LinkButton)sender;
                string id = btn.CommandArgument.ToString();
                string description = hidden_desc.Value;
                string visibility = hidden_vis.Value;

                if (!string.IsNullOrEmpty(id))
                {
                    if (!string.IsNullOrEmpty(visibility))
                    {
                        if (DBOperations.EditImage(Convert.ToInt32(id), description, Convert.ToBoolean(visibility)))
                        {
                            success.InnerHtml = "Immagine modificata correttamente!";
                            loadTableImages();
                        }
                        else
                            error.InnerHtml = "Le modifiche non sono state salvate!";
                    }
                    else
                    {
                        error.InnerHtml = "Le modifiche non sono state salvate - Visibilità non impostata!";
                    }
                }
                else
                    error.InnerHtml = "Le modifiche non sono state salvate - Id Immagine mancante!";
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        protected void editFood_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = (LinkButton)sender;
                string id = btn.CommandArgument.ToString();
                string name = hidden_name.Value;
                string category = hidden_category.Value;
                string ingredients = hidden_ingredients.Value;
                string price = hidden_price.Value;

                if (!string.IsNullOrEmpty(id))
                {
                    if (!string.IsNullOrEmpty(category) && !string.IsNullOrEmpty(name) &&
                            !string.IsNullOrEmpty(price) && !string.IsNullOrEmpty(ingredients))
                    {
                        if (DBOperations.EditFood(Convert.ToInt32(id), name, category, ingredients, price))
                        {
                            success.InnerHtml = "Piatto modificato correttamente!";
                            loadTableFoods();
                        }
                        else
                            error.InnerHtml = "Le modifiche non sono state salvate!";
                    }
                    else
                        error.InnerHtml = "Piatto non modificato - Assicurarsi di inserire tutti i campi!";
                }
                else
                    error.InnerHtml = "Le modifiche non sono state salvate - Id Piatto mancante!";
            }
            catch (Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        protected void editSpecials_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = (LinkButton)sender;
                string id = btn.CommandArgument.ToString();
                string navigation = hidden_nav_spec.Value;
                string title = hidden_title_spec.Value;
                string description = hidden_desc_spec.Value;
                string text = hidden_text_spec.Value;
                string visible = hidden_vis_spec.Value;

                if (!string.IsNullOrEmpty(id))
                {
                    if (!string.IsNullOrEmpty(navigation) && !string.IsNullOrEmpty(title) &&
                            !string.IsNullOrEmpty(description) && !string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(visible))
                    {
                        if (DBOperations.EditSpecials(Convert.ToInt32(id), navigation, title, description, text, Convert.ToBoolean(visible)))
                        {
                            success.InnerHtml = "Specialità modificata correttamente!";
                            loadTableSpecials();
                        }
                        else
                            error.InnerHtml = "Le modifiche non sono state salvate!";
                    }
                    else
                        error.InnerHtml = "Specialità non modificata - Assicurarsi di inserire tutti i campi!";
                }
                else
                    error.InnerHtml = "Le modifiche non sono state salvate - Id Specialità mancante!";
            }
            catch (Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        //protected void editEvent_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        LinkButton btn = (LinkButton)sender;
        //        string id = btn.CommandArgument.ToString();
        //        string navigation = hidden_nav_spec.Value;
        //        string title = hidden_title_spec.Value;
        //        string description = hidden_desc_spec.Value;
        //        string text = hidden_text_spec.Value;
        //        string visible = hidden_vis_spec.Value;

        //        if (!string.IsNullOrEmpty(id))
        //        {
        //            if (!string.IsNullOrEmpty(navigation) && !string.IsNullOrEmpty(title) &&
        //                    !string.IsNullOrEmpty(description) && !string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(visible))
        //            {
        //                if (DBOperations.EditSpecials(Convert.ToInt32(id), navigation, title, description, text, Convert.ToBoolean(visible)))
        //                {
        //                    success.InnerHtml = "Specialità modificata correttamente!";
        //                    loadTableSpecials();
        //                }
        //                else
        //                    error.InnerHtml = "Le modifiche non sono state salvate!";
        //            }
        //            else
        //                error.InnerHtml = "Specialità non modificata - Assicurarsi di inserire tutti i campi!";
        //        }
        //        else
        //            error.InnerHtml = "Le modifiche non sono state salvate - Id Specialità mancante!";
        //    }
        //    catch (Exception ex)
        //    {
        //        error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
        //    }
        //}

        protected void importFood_Click(object sender, EventArgs e)
        {
            try
            {
                string category = ddlCategory.SelectedValue;
                string name = nameFood.Value;
                string prize = priceFood.Value;
                string ingredients = ingredientsFood.Value;

                if (!string.IsNullOrEmpty(category) && !string.IsNullOrEmpty(name) &&
                    !string.IsNullOrEmpty(prize) && !string.IsNullOrEmpty(ingredients))
                {
                    if(DBOperations.SaveFood(name, category, ingredients, prize))
                    {
                        success.InnerHtml = "Piatto salvato correttamente!";
                        loadTableFoods();
                    }
                    else
                        error.InnerHtml = "Piatto non salvato!";
                }
                else
                    error.InnerHtml = "Piatto non salvato - Assicurarsi di inserire tutti i campi!";
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        protected void importSpecials_Click(object sender, EventArgs e)
        {
            try
            {
                string navigation = nav_specials.Value;
                string title = title_specials.Value;
                string description = desc_specials.Value;
                string text = text_specials.Value;
                bool visibility = vis_specials.Checked;
                bool hasImage = fileUpload_specials.HasFile;

                if(hasImage && !string.IsNullOrEmpty(navigation) && !string.IsNullOrEmpty(title) && 
                    !string.IsNullOrEmpty(description) && !string.IsNullOrEmpty(text))
                {
                    byte[] buffer = fileUpload_specials.FileBytes;
                    if (DBOperations.SaveSpecials(navigation, title, description, text, visibility, buffer))
                    {
                        success.InnerHtml = "Specialità salvata correttamente!";
                        loadTableSpecials();
                    }
                    else
                        error.InnerHtml = "Specialità non salvata!";
                }
                else
                    error.InnerHtml = "Specialità non salvata - Assicurarsi di inserire tutti i campi!";
            }
            catch(Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }

        protected void importEvent_Click(object sender, EventArgs e)
        {
            try
            {
                string title = ev_title.Value;
                string subtitle = ev_subtitle.Value;
                string description = ev_desc1.Value;
                string description2 = ev_desc2.Value;
                string option1 = ev_option1.Value;
                string option2 = ev_option2.Value;
                string option3 = ev_option3.Value;
                string option4 = ev_option4.Value;
                string option5 = ev_option5.Value;
                bool visibility = ev_visible.Checked;
                bool hasImage = fileUpload_event.HasFile;

                if (hasImage && !string.IsNullOrEmpty(subtitle) && !string.IsNullOrEmpty(title) &&
                    !string.IsNullOrEmpty(description) && !string.IsNullOrEmpty(description2))
                {
                    byte[] buffer = fileUpload_event.FileBytes;
                    if (DBOperations.SaveEvent(title, subtitle, description, description2,
                        option1, option2, option3, option4, option5, visibility, buffer))
                    {
                        success.InnerHtml = "Evento salvato correttamente!";
                        loadTableEvents();
                    }
                    else
                        error.InnerHtml = "Evento non salvato!";
                }
                else
                    error.InnerHtml = "Evento non salvato - Assicurarsi di inserire tutti i campi obbligatori!";
            }
            catch (Exception ex)
            {
                error.InnerHtml = ex.Message + "\n" + ex.StackTrace;
            }
        }
    }
}