using System;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;

namespace SampleLogin_C
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            byte[] encodedPassword = new UTF8Encoding().GetBytes(txtPassword.Text.Trim());
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            string encoded = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
            if (txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                lblErrorMessage.Style["display"] = "block";
                if (txtUserName.Text.Trim() == "")
                {
                    txtUserName.Style["border"] = "3px solid red";
                    txtUserName.Style["background-color"] = "rgba(255,0,0,0.3)";
                }
                if (txtPassword.Text.Trim() == "")
                {
                    txtPassword.Style["border"] = "3px solid red";
                    txtPassword.Style["background-color"] = "rgba(255,0,0,0.3)";
                }
            }
            else {
                //MySqlConnection sqlCon = new MySqlConnection(@"server=localhost;user id=root;database=dryridgeprogramming;port=3306;sslmode=None");
                MySqlConnection sqlCon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                string query = "SELECT * FROM tbluser WHERE username='" + txtUserName.Text.Trim() + "' AND password='" + encoded + "'";
                MySqlCommand sqlCmd = new MySqlCommand(query, sqlCon);
                try
                {
                    sqlCon.Open();
                    MySqlDataReader sdr = sqlCmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        lblErrorMessage.Style["display"] = "none";
                        Session["username"] = txtUserName.Text.Trim();
                        Response.Redirect("user.aspx");
                    }
                    else
                        lblErrorMessage.Style["display"] = "block";
                    sqlCon.Close();
                } catch (Exception)
                {
                    lblErrorMessage.Style["display"] = "block";
                }
            }
        }
    }
}