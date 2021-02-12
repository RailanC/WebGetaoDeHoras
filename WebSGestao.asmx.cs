using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebGetaoDeHoras
{
    /// <summary>
    /// Summary description for WebSGestao
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebSGestao : System.Web.Services.WebService
    {
        SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConNW"].ToString());

        [WebMethod]
        public bool Login(string user, string pass, string tipo) //tipo = Aluno ou Professor
        {
            Con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("Select Numero from " + tipo + " where login='" + user + "' and Pass='" + pass + "'", Con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                Con.Close();
            }
        }

        [WebMethod]
        public bool NovaHoras(int numero, string sigla, int trim, long minutos, string dataInicial)
        {
            Con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("sp_NewHora", Con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Aluno", numero);
                cmd.Parameters.AddWithValue("@trim", trim);
                cmd.Parameters.AddWithValue("@Sigla", sigla);
                cmd.Parameters.AddWithValue("@qtd", minutos);
                cmd.Parameters.AddWithValue("@data", dataInicial);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                Con.Close();
            }
        }

        [WebMethod]
        public bool Registo(int Numero, string Nome, string Turma, string Login, string senha, string tipo)
        {
            Con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("Select Numero from Aluno where Numero='" + Numero + "'", Con);
                SqlDataReader reader = cmd.ExecuteReader();
                SqlCommand cmdReg = new SqlCommand("sp_RegAluno", Con);
                cmdReg.CommandType = CommandType.StoredProcedure;
                cmdReg.Parameters.AddWithValue("@Numero", Numero);
                cmdReg.Parameters.AddWithValue("@Nome", Nome);
                cmdReg.Parameters.AddWithValue("@Turma", Turma);
                cmdReg.Parameters.AddWithValue("@Login", Login);
                cmdReg.Parameters.AddWithValue("@Pass", senha);
                if (reader.HasRows)
                {
                    reader.Close();
                    if (tipo == "Professor")
                    {
                        cmdReg.ExecuteNonQuery();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    reader.Close();
                    SqlCommand cmdCheck = new SqlCommand("Select Numero from Aluno where login='" + Login + "'", Con);
                    SqlDataReader readerCheck = cmdCheck.ExecuteReader();
                    if (readerCheck.HasRows)
                        return false;
                    else
                    {
                        readerCheck.Close();
                        cmdReg.ExecuteNonQuery();
                        return true;
                    }

                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                Con.Close();
            }
        }

        [WebMethod]
        public bool Compensa(int numero, string sigla, int trim, long minutos)
        {
            Con.Open();
            try
            {

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                Con.Close();
            }

        }
    }
}
