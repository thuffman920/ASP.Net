using System;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;

namespace SampleLogin_C
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void changeValue(TextBox value)
        {
            if (value.Text.Trim() == "") {
                value.Style["border"] = "3px solid red";
                value.Style["background-color"] = "rgba(255,0,0,0.3)";
            }
        }
        protected void btnReg_Click(object sender, EventArgs e)
        {
            if ((username.Text.Trim() == "" || password.Text.Trim() == "" || confirm.Text.Trim() == "" || email.Text.Trim() == "" || phone.Text.Trim() == "" || fullname.Text.Trim() == ""))
            {
                warningb.Style["grid-row"] = "";
                warninga.Style["grid-row"] = "1 / 2";
                notMet.Style["display"] = "block";
                itExists.Style["display"] = "none";
                changeValue(username);
                changeValue(password);
                changeValue(email);
                changeValue(phone);
                changeValue(fullname);
                changeValue(confirm);
            } else {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
                //try {
                    MySqlCommand checkIt = new MySqlCommand("SELECT * FROM tbluser WHERE username='" + username.Text.Trim() + "' OR email='" + email.Text.Trim() + "'", con);
                    MySqlDataReader sdr = checkIt.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        warninga.Style["grid-row"] = "";
                        warningb.Style["grid-row"] = "1 / 2";
                        notMet.Style["display"] = "none";
                        itExists.Style["display"] = "block";
                    } else {
                        confirmation.Style["display"] = "block";
                        sdr.Close();
                        byte[] encodedPassword = new UTF8Encoding().GetBytes(password.Text);
                        byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
                        string encrPassword = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
                        string addCommand = "INSERT INTO tbluser (firstname, lastname, companyname, email, phone, username, password) VALUES ('" + 
                            fullname.Text.Trim().Substring(0, fullname.Text.Trim().LastIndexOf(" ")) + "', '" + fullname.Text.Trim().Substring(fullname.Text.Trim().LastIndexOf(" ") + 1) + 
                            "', '" + companyname.Text.Trim() + "', '" + email.Text.Trim() + "', '" + phone.Text.Trim() + "', '" + username.Text.Trim() + "', '" + encrPassword + "')";
                        MySqlCommand cmd = new MySqlCommand(addCommand, con);
                        cmd.ExecuteNonQuery();
                        string newAddCmd = "INSERT INTO userinfo (username, city, state, zipcode, mostRecentTicket, manyRequests) VALUES ('" + 
                            username.Text.Trim() + "', '', '', '', '" + (-1) + "', '" +  0 + "')";
                        cmd = new MySqlCommand(newAddCmd, con);
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                /**} catch (Exception)
                {
                    warninga.Style["grid-row"] = "";
                    warningb.Style["grid-row"] = "1 / 2";
                    notMet.Style["display"] = "none";
                    itExists.Style["display"] = "block";
                }*/
            }
        }
    }
}