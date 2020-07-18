using Resume.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace Resume.Helpers
{
    public static class Util
    {
        private static SqlConnection connection { get; set; }
        public static int UserId { get; set; }

        static Util()
        {
            UserId = 2;
        }

        public static SqlConnection GetConnection()
        {
            if(connection == null)
            {
                connection = 
                    new SqlConnection(ConfigurationManager.ConnectionStrings["resume_db"].ConnectionString);
                connection.Open();
            }
            return connection;
        }

        public static ResumeObject GetResume()
        {
            ResumeObject resume = new ResumeObject();

            string queryStr = $"GetUserById @id";
            using (SqlCommand command = new SqlCommand(queryStr, GetConnection()))
            {
                SqlParameter param = new SqlParameter();
                param.ParameterName = "@id";
                param.SqlDbType = SqlDbType.Int;
                param.Value = UserId;
                param.Direction = ParameterDirection.Input;
                command.Parameters.Add(param);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    reader.Read();

                    resume.Firstname = reader.GetString(0);
                    resume.Secondname = reader.GetString(1);
                    if (!reader.IsDBNull(2))
                    {
                        resume.Patronymic = reader.GetString(2);
                    }
                    
                    resume.DOB = reader.GetDateTime(3);
                    resume.Ava_path = reader.GetString(4);
                }
            }


            queryStr = $"SELECT email FROM email WHERE id_user = {UserId}";
            using (SqlCommand command = new SqlCommand(queryStr, GetConnection()))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    reader.Read();
                    //resume.Emails.Add(reader.GetString(0));
                }
            }

            queryStr = $"SELECT email FROM email WHERE id_user = {UserId}";
            using (SqlCommand command = new SqlCommand(queryStr, GetConnection()))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    reader.Read();
                    //resume.Emails.Add(reader.GetString(0));
                }
            }

            //queryStr = $"";
            //using (SqlCommand command = new SqlCommand(queryStr, GetConnection()))
            //{
            //    using (SqlDataReader reader = command.ExecuteReader())
            //    {
            //        reader.Read();
            //        //resume.Emails.Add(reader.GetString(0));
            //    }
            //}

            return resume;
        }
    }
}