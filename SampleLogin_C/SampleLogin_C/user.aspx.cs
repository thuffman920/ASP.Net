using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleLogin_C
{
    public partial class user : System.Web.UI.Page
    {
        private List<string[]> dataRequests = new List<string[]>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Convert.ToString(Session["username"])))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
                try {
                    MySqlCommand checkIt = new MySqlCommand("SELECT * FROM userinfo WHERE username='" + Convert.ToString(Session["username"]) + "'", con);
                    MySqlDataReader sdr = checkIt.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        int mostrec = Convert.ToInt32(sdr["mostRecentTicket"].ToString());
                        int countReq = Convert.ToInt32(sdr["manyRequests"].ToString());
                        street1.InnerHtml = sdr["addressA"].ToString();
                        street2.InnerHtml = sdr["addressB"].ToString();
                        county.InnerHtml = sdr["city"].ToString() + ", " + sdr["state"].ToString() + " " + sdr["zipcode"].ToString();
                        sdr.Close();
                    }
                    checkIt = new MySqlCommand("SELECT * FROM tbluser WHERE username='" + Convert.ToString(Session["username"]) + "'", con);
                    sdr = checkIt.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        name.InnerHtml = sdr["firstname"].ToString() + " " + sdr["lastname"].ToString();
                        companyName.InnerHtml = sdr["companyname"].ToString();
                        email.InnerHtml = sdr["email"].ToString();
                        sdr.Close();
                        //checkIt = new MySqlCommand("SELECT * FROM requests WHERE username='" + Convert.ToString(Session["username"]) + "'");
                    }
                    /**if (sdr.HasRows)
                        while (sdr.Read())
                            dataRequests.Add(new string[6] { sdr["dateSubmitted"].ToString(), sdr["dateResponse"].ToString(), sdr["description"].ToString(), sdr["response"].ToString(), sdr["approved"].ToString(), sdr["quotedPrice"].ToString() });
                    */
                    checkIt = new MySqlCommand("SELECT * FROM opentickets WHERE username='" + Convert.ToString(Session["username"]) + "'", con);
                    sdr = checkIt.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        orderpercent.InnerText = sdr["percentage"].ToString();
                        requestpercent.InnerHtml = "0.75";
                        sdr.Close();
                    }
                    /**for (int i = Math.Max(0, dataRequests.Count - 4); i < dataRequests.Count; i++)
                    {

                    }*/
                }
                catch (Exception)
                {

                }
            }
        }
    }
}