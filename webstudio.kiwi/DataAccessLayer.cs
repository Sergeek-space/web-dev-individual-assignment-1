using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace webstudio.kiwi
{
    public class DataAccessLayer
    {
        // This metod is implemented with exception handling. 
        //To test change the querystring (wrong tbl name or field name) and try to login
        public static string UserLogin(string userId, string password)
        {
            string connectionString = "Data Source = localhost; Initial Catalog = dbWebStudio; Integrated Security = True; ";
            string queryString = "SELECT userId,role,firstName FROM tblUsers WHERE userId = '" + userId + "' and passwd = '" + password + "';";
            try
            {
                using (SqlConnection connection = new SqlConnection(
                       connectionString))
                {
                    
                    SqlCommand command = new SqlCommand(queryString, connection);
                    command.Connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    string output = "";
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            output += reader[0].ToString() + "_" + reader[1].ToString() + "_" + reader[2].ToString();
                        }
                    }
                    else
                    {
                        output = "Empty";
                    }
                    command.Connection.Close();
                    return output;
                }
            }
            catch (SqlException ex)
            {
                string output = "ERROR_Inner Exception: " + ex.Message;
                return output;
            }

            catch (Exception ex)
            {
                string output = "ERROR_Other Exception: " + ex.Message;
                return output;
            }

        }

        public static int UserRegister(string userId, string firstName, string lastName, string password)
        {
            string connectionString = "Data Source = localhost; Initial Catalog = dbWebStudio; Integrated Security = True; ";
            using (SqlConnection connection = new SqlConnection(
                       connectionString))
            {
                string queryString = "insert into tblUsers values('" + userId + "', '" + firstName + "', '" + lastName + "', '" + password + "', 0 );";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                int res = command.ExecuteNonQuery();
                command.Connection.Close();
                return res;
            }
        }

        public static int AddWebDevRecord(string prdType, string prdDescription, int prdPrice)
        {
            string connectionString = "Data Source = localhost; Initial Catalog = dbWebStudio; Integrated Security = True; ";
            using (SqlConnection connection = new SqlConnection(
                       connectionString))
            {
                string queryString = "insert into tblWebDev values('" + prdType + "', '" + prdDescription + "', " + prdPrice + " );";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                int res = command.ExecuteNonQuery();
                command.Connection.Close();
                return res;
            }
        }

        
    }
}