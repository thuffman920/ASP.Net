using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace SampleLogin_C
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            byte[] encodedPassword = new UTF8Encoding().GetBytes(password.Text.Trim());
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            string encoded = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
            if (username.Text.Trim() == "" || password.Text.Trim() == "")
            {
                Response.Redirect("login.aspx");
                if (username.Text.Trim() == "")
                {
                    username.Style["border"] = "3px solid red";
                    username.Style["background-color"] = "rgba(255,0,0,0.3)";
                }
                if (password.Text.Trim() == "")
                {
                    password.Style["border"] = "3px solid red";
                    password.Style["background-color"] = "rgba(255,0,0,0.3)";
                }
            }
            else
            {
                //MySqlConnection sqlCon = new MySqlConnection(@"server=localhost;user id=root;database=dryridgeprogramming;port=3306;sslmode=None");
                MySqlConnection sqlCon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                string query = "SELECT * FROM tbluser WHERE username='" + username.Text.Trim() + "' AND password='" + encoded + "'";
                MySqlCommand sqlCmd = new MySqlCommand(query, sqlCon);
                try
                {
                    sqlCon.Open();
                    MySqlDataReader sdr = sqlCmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        Session["username"] = username.Text.Trim();
                        Response.Redirect("user.aspx", false);
                    }
                    else
                        Response.Redirect("login.aspx");
                    sqlCon.Close();
                }
                catch (Exception)
                {
                    Response.Redirect("login.aspx");
                }
            }
        }
    }
}