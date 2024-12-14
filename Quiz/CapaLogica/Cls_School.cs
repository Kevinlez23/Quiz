using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Quiz.CapaLogica
{
    public class Cls_School
    {
        public static int AddSchool(string Name, string Description, string Adress, string Phone, string PostCode, string PostAdress)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AddSchool", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.Add(new SqlParameter("@SchoolName", Name));
                    cmd.Parameters.Add(new SqlParameter("@Description", Description));
                    cmd.Parameters.Add(new SqlParameter("@Adress", Adress));
                    cmd.Parameters.Add(new SqlParameter("@Phone", Phone));
                    cmd.Parameters.Add(new SqlParameter("@PostCode", PostCode));
                    cmd.Parameters.Add(new SqlParameter("@PostAdress", PostAdress));



                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }



        public static int DeleteSchool(string Schoolid)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("DeteleSchool", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };

                    cmd.Parameters.Add(new SqlParameter("@id", Schoolid));



                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        public static int EditSchool(string Name, string Description, string Adress, string Phone, string PostCode, string PostAdress)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("EditSchool", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@SchoolName", Name));
                    cmd.Parameters.Add(new SqlParameter("@Description", Description));
                    cmd.Parameters.Add(new SqlParameter("@Adress", Adress));
                    cmd.Parameters.Add(new SqlParameter("@Phone", Phone));
                    cmd.Parameters.Add(new SqlParameter("@PostCode", PostCode));
                    cmd.Parameters.Add(new SqlParameter("@PostAdress", PostAdress));



                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }
    }
}