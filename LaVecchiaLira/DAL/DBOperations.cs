using System;
using System.Data;
using System.Data.SqlClient;

namespace LaVecchiaLira.DAL
{
    public static class DBOperations
    {
        internal static bool UserAuthentication(string user, string password, out int id)
        {
            id = int.MinValue;
            bool findUser = false;

            SqlParameter[] parameters = {
                new SqlParameter("@User", user),
                new SqlParameter("@Password", password)
            };

            using (DataTable table = ExecuteReader("AuthenticationUser", parameters))
            {
                if (table.Rows.Count > 0)
                {
                    id = Convert.ToInt32(table.Rows[0]["Id"]);
                    findUser = true;
                }
            }

            return findUser;
        }

        internal static DataTable GetSections()
        {
            return ExecuteReader("GetSections", new SqlParameter[] { });
        }

        internal static bool SaveImage(byte[] img, string name, string description, bool visible)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Image", SqlDbType.Image) { Value = img },
                new SqlParameter("@Name", SqlDbType.VarChar) { Value = name },
                new SqlParameter("@Description", SqlDbType.VarChar) { Value = description },
                new SqlParameter("@Visible", SqlDbType.Bit) { Value = visible }
            };

            return ExecuteNonQuery("SaveImage", parameters);
        }


        internal static bool EditImage(int id, string description, bool visible)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
                new SqlParameter("@Description", SqlDbType.VarChar) { Value = description },
                new SqlParameter("@Visible", SqlDbType.Bit) { Value = visible }
            };

            return ExecuteNonQuery("EditImage", parameters);
        }


        internal static bool DeleteImage(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
            };

            return ExecuteNonQuery("DeleteImage", parameters);
        }


        internal static bool DeleteFood(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
            };

            return ExecuteNonQuery("DeleteFood", parameters);

        }


        internal static bool DeleteSpecials(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
            };

            return ExecuteNonQuery("DeleteSpecials", parameters);
        }


        internal static bool DeleteEvent(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
            };

            return ExecuteNonQuery("DeleteEvent", parameters);
        }


        internal static bool SaveFood(string name, string category, string ingredients, string price)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Name", SqlDbType.VarChar) { Value = name },
                new SqlParameter("@Category", SqlDbType.VarChar) { Value = category },
                new SqlParameter("@Ingredients", SqlDbType.VarChar) { Value = ingredients },
                new SqlParameter("@Price", SqlDbType.Bit) { Value = price }
            };

            return ExecuteNonQuery("SaveFood", parameters);
        }


        internal static bool SaveSpecials(string navigation, string title, string description, string text, bool visible, byte[] img)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Image", SqlDbType.Image) { Value = img },
                new SqlParameter("@Navigation", SqlDbType.VarChar) { Value = navigation },
                new SqlParameter("@Title", SqlDbType.VarChar) { Value = title },
                new SqlParameter("@Description", SqlDbType.VarChar) { Value = description },
                new SqlParameter("@Text", SqlDbType.VarChar) { Value = text },
                new SqlParameter("@Visible", SqlDbType.Bit) { Value = visible }
            };

            return ExecuteNonQuery("SaveSpecials", parameters);
        }


        internal static bool SaveEvent(string title, string subTitle, string description1, string description2,
                        string option1, string option2, string option3, string option4, string option5, bool visible, byte[] img)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Image", SqlDbType.Image) { Value = img },
                new SqlParameter("@Title", SqlDbType.VarChar) { Value = title },
                new SqlParameter("@SubTitle", SqlDbType.VarChar) { Value = subTitle },
                new SqlParameter("@Description1", SqlDbType.VarChar) { Value = description1 },
                new SqlParameter("@Description2", SqlDbType.VarChar) { Value = description2 },
                new SqlParameter("@Option1", SqlDbType.VarChar) { Value = option1 },
                new SqlParameter("@Option2", SqlDbType.VarChar) { Value = option2 },
                new SqlParameter("@Option3", SqlDbType.VarChar) { Value = option3 },
                new SqlParameter("@Option4", SqlDbType.VarChar) { Value = option4 },
                new SqlParameter("@Option5", SqlDbType.VarChar) { Value = option5 },
                new SqlParameter("@Visible", SqlDbType.Bit) { Value = visible }
            };

            return ExecuteNonQuery("SaveEvent", parameters);
        }


        internal static bool EditSpecials(int id, string navigation, string title, string description, string text, bool visible)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
                new SqlParameter("@Navigation", SqlDbType.VarChar) { Value = navigation },
                new SqlParameter("@Title", SqlDbType.VarChar) { Value = title },
                new SqlParameter("@Description", SqlDbType.VarChar) { Value = description },
                new SqlParameter("@Text", SqlDbType.VarChar) { Value = text },
                new SqlParameter("@Visible", SqlDbType.Bit) { Value = visible }
            };

            return ExecuteNonQuery("EditSpecials", parameters);
        }


        internal static bool EditFood(int id, string name, string category, string ingredients, string price)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id },
                new SqlParameter("@Name", SqlDbType.VarChar) { Value = name },
                new SqlParameter("@Category", SqlDbType.VarChar) { Value = category },
                new SqlParameter("@Ingredients", SqlDbType.VarChar) { Value = ingredients },
                new SqlParameter("@Price", SqlDbType.VarChar) { Value = price }
            };

            return ExecuteNonQuery("EditFood", parameters);
        }


        internal static DataTable GetImages()
        {
            SqlParameter[] parameters = { };
            return ExecuteReader("GetImages", parameters);
        }


        internal static DataTable GetImagesByVisibility()
        {
            return ExecuteReader("GetImagesByVisibility", new SqlParameter[] { });
        }


        internal static DataTable GetFoods()
        {
            return ExecuteReader("GetMenu", new SqlParameter[] { });
        }


        internal static DataTable GetSpecials()
        {
            return ExecuteReader("GetSpecials", new SqlParameter[] { });
        }


        internal static DataTable GetEvents()
        {
            return ExecuteReader("GetEvents", new SqlParameter[] { });
        }


        internal static DataTable GetSpecialsByVisibility()
        {
            return ExecuteReader("GetSpecialsByVisibility", new SqlParameter[] { });
        }


        internal static DataTable GetEventsByVisibility()
        {
            return ExecuteReader("GetEventsByVisibility", new SqlParameter[] { });
        }

        private static bool ExecuteNonQuery(string storedProcedureName, SqlParameter[] parameters)
        {
            bool result = false;

            using (SqlConnection conn = new SqlConnection(Utility.GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(storedProcedureName, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddRange(parameters);

                    conn.Open();

                    int rowsAffected = cmd.ExecuteNonQuery();
                    result = rowsAffected > 0;
                }
            }

            return result;
        }

        private static DataTable ExecuteReader(string storedProcedureName, SqlParameter[] parameters)
        {
            DataTable table = new DataTable();

            using (SqlConnection conn = new SqlConnection(Utility.GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(storedProcedureName, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddRange(parameters);

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table.Load(reader);
                    }
                }
            }

            return table;
        }
    }
}