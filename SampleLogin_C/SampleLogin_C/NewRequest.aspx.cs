using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;

namespace SampleLogin_C
{

    //NOTE TO TYLER - This code can be reworked to combine the saveValues into the login-create method. This would only work if there are no open requests 
    // underneath this user's account (description == "The user is still building the request and hasnt been submitted.").
    public partial class NewRequest : System.Web.UI.Page
    {
        private static MySqlCommand cmd;
        private static MySqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static string GenerateInt()
        {
            Random random = new Random();
            int nextRand = random.Next(100, 1000000);
            if (nextRand < 100000 && nextRand >= 10000)
                return "0" + nextRand;
            else if (nextRand < 10000 && nextRand >= 1000)
                return "00" + nextRand;
            else if (nextRand < 1000 && nextRand >= 100)
                return "000" + nextRand;
            return "" + nextRand;
        }
        /**
         * This is a rework purposal
         */
        [WebMethod]
        public static string[] NewLoginAcc(string[] values)
        {
            //Make the connection to the SQL server 
            MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try {
                conn.Open();
            } catch {
                throw new Exception("An error has occurred. Please try again later.");
            }
            //Here is the breakdown of the proposed values:
            //string[] values = {"ticketNo"(0), "email"(1), "userID"(2), "pubKey"(3), "companyName"(4), "contactName"(5), "phone"(6), "address"(7), "city"(8), "state"(9), "zip"(10), "contactTimes"(11), "appType"(12), "useCase"(13), "audience"(14), "employees"(15), "accounts"(16), "updatingPrev"(17), "fullAccess"(18), "oses"(19),
            //    "webInter"(20), "idkos"(21), "googleStore"(22), "appleStore"(23), "descrStore"(24), "privacy"(25), "copyright"(26), "devices"(27), "attributes"(28), "layouts"(29), "referLayoutsA"(30), "referLayoutsB"(31), "referLayoutsC"(32), "referLayoutsD"(33), "referLayoutsE"(34), "descrLayout"(35), 
            //    "feats"(36), "featUser"(37), "topFeatsA"(38), "topFeatsB"(39), "topFeatsC"(40), "topFeatsD"(41), "topFeatsE"(42), "scanFeats"(43), "overallFunc"(44), "otherFeats"(45), "furtherDets"(46), "progress"(47), "currentProgress"(48), "description"(49), "userAct"(50), "username" (51), "pass" (52)};

            //First, check if the user does exists and retrieve specific information
            bool isCompleteNull = values[4] == "" && values[5] == "" && values[6] == "" && values[7] == "" && values[8] == "" && values[9] == "" && values[10] == "" && values[11] == "";
            string encrPassword = EncryptString(values[52]);
            cmd = new MySqlCommand("SELECT * FROM drpusers WHERE username='" + values[51] + "' AND password='" + encrPassword + "'");
            reader = cmd.ExecuteReader();
            if (!reader.HasRows) {
                reader.Close();
                conn.Close();
                return null;
            }
            reader.Read();
            string uid = reader["userID"].ToString();
            int numOfRequests = Int32.Parse(reader["numOfRequests"].ToString());
            string[] info = null;
            if (isCompleteNull)
                info = new string[] { reader["companyName"].ToString(), reader["contactName"].ToString(), reader["phone"].ToString(), reader["address"].ToString(), reader["city"].ToString(), reader["state"].ToString(), reader["contactTimes"].ToString() };

            //Second, find any and all of the requests done by this user that aren't submitted
            cmd = new MySqlCommand("SELECT * FROM drprequests WHERE userId =" + uid + " AND description='The user is still building the request and hasnt been submitted.'", conn);
            reader = cmd.ExecuteReader();
            if (reader.HasRows) {
                List<string[]> list = new List<string[]>();
                while (reader.Read())
                    list.Add(new string[] { reader["ticketNo"].ToString(), reader["dateCreated"].ToString(), reader["appType"].ToString(), reader["contactName"].ToString(), reader["companyName"].ToString() });
                string[] results = new string[12 + 5 * list.Count];
                for (int i = 0; i < list.Count; i++)
                    for (int j = 0; j < list[i].Length; j++)
                        results[i + 5] = list[i][j];
                results[0] = uid;
                results[1] = values[51];
                results[2] = "";
                results[3] = "";
                results[4] = "" + list.Count;
                for (int i = 0; i < info.Length; i++)
                    results[i + 5 + 5 * list.Count] = info[i];
                return results;
            }
            //Third, since there are no tickets by this user, we are going to add this ticket in and update the user's information
            string dateCreated = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            string items = "INSERT INTO drprequests (ticketNo, dateCreated, email, userID, pubKey, companyName, contactName, phone, address, city, state, zip, contactTimes, appType, useCase, audience, employees, accounts, updatingPrev, " +
                "fullAccess, oses, webInter, idkos, googleStore, appleStore, descrStore, privacy, copyright, devices, attributes, layouts, referLayoutA, referLayoutB, referLayoutC, referLayoutD, referLayoutE, " +
                "descrLayout, feats, featUser, topFeatsA, topFeatsB, topFeatsC, topFeatsD, topFeatsE, scanFeats, overallFunc, otherFeats, furtherDets, progress, currentProgress, description, lastUpdated, userAct) " +
                "VALUES (NULL, '" + dateCreated + "', '" + values[1] + "', '" + uid + "', '" + GenerateInt() + "', ";
            int[] indices = { 13, 14, 15, 16, 17, 18, 22, 23, 25, 26, 47 };
            int count = 0;
            for (int i = 4; i < values.Length - 3; i++) {
                if (count < 10 && i == indices[count]) {
                    items += values[i] + ", ";
                    count++;
                } else
                    items += "'" + values[i] + "', ";
            }
            items += "'" + dateCreated + "', '" + values[values.Length - 1] + "')";
            cmd = new MySqlCommand(items, conn);
            int linesAffect = cmd.ExecuteNonQuery();
            if (linesAffect > 0) {
                cmd = new MySqlCommand("SELECT * FROM drprequests WHERE dateCreated='" + dateCreated + "'");
                reader = cmd.ExecuteReader();
                reader.Read();
                string ticketNo = reader["ticketNo"].ToString();
                string pubKey = reader["pubKey"].ToString();
                cmd = new MySqlCommand("UPDATE drpusers SET numOfRequests = " + (numOfRequests + 1) + " WHERE userID='" + uid + "'");
                cmd.ExecuteNonQuery();
                //return value breakdown is as the following:
                // return new string[] { userID, username, ticketNo, pubKey, numOfUnsubmittedTickets, {{ticketNo_1, dateCreated_1, appType_1, contactName_1, companyName_1},...}, {companyName, contactName, phone, address, city, state, zip, contactTimes} };
                //The unsubmitted tickets are submitted if and only if the user has other tickets
                //The contact information is submitted if and only if the values for this information is null.
                return new string[] { uid, values[51], ticketNo, pubKey, "0", info[0], info[1], info[2], info[3], info[4], info[5], info[6] };
            }
            return null;
        }
        private static bool FormValidate()
        {

            return true;
        }
        [WebMethod]
        private static string EncryptString(string pass)
        {
            byte[] encodedPassword = new UTF8Encoding().GetBytes(pass);
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            return BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
        }
        [WebMethod]
        public static string[] LoginAcc(string username, string password)
        {
            MySqlConnection sqlCon = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            byte[] encodedPassword = new UTF8Encoding().GetBytes(password);
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            string encrPassword = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
            string query = "SELECT * FROM drpusers WHERE username='" + username + "' AND pass='" + encrPassword + "'";
            MySqlCommand sqlCmd = new MySqlCommand(query, sqlCon);
            try {
                sqlCon.Open();
            }catch {
                throw new Exception("An error has occurred.");
            }
            MySqlDataReader sdr = sqlCmd.ExecuteReader();
            if (sdr.HasRows) {
                sdr.Read();
                string result = sdr["userID"].ToString();
                sqlCon.Close();
                return new string[] { result, username };
            }
            sqlCon.Close();
            return null;
        }
        [WebMethod]
        public static string[] CreateAcc(string fname, string lname, string email, string phone, string username, string password)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try {
                con.Open();
            } catch {
                throw new Exception("An error has occurred.");
            }
            MySqlCommand checkIt = new MySqlCommand("SELECT * FROM drpusers WHERE username='" + username + "' OR email='" + email + "'", con);
            MySqlDataReader sdr = checkIt.ExecuteReader();
            if (sdr.HasRows)
                throw new Exception("This user already exists!");
            sdr.Close();
            byte[] encodedPassword = new UTF8Encoding().GetBytes(password);
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);
            string encrPassword = BitConverter.ToString(hash).Replace("-", string.Empty).ToLower();
            //EX:
            //  "INSERT INTO drpusers (userID, numOfTickets, numOfRequests, dateCreated, lastname, firstname, contactName, phone, email, username, publicKey, pass, address, companyName, city, zip, state, contactTimes)
            //  VALUES (NULL, '0', '0', '2022-01-14 23:45:17.000000', 'Huffman', 'Tyler', NULL, '(828) 275-4712', 'thuffman920@gmail.com', 'thuffman920', '032481', MD5('PsaLms119'), NULL, NULL, NULL, NULL, NULL, NULL)";
            string addCommand = "INSERT INTO drpusers (userID, numOfTickets, numOfRequests, dateCreated, firstname, lastname, contactName, phone, email, username, pass, companyName, address, city, state, zip, contactTimes)" +
                " VALUES (NULL, '0','0','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss.ffffff") + "','" + fname + "','" + lname + "',NULL,'" + phone + "','" + email + "','" + username + "','" + encrPassword + "',NULL, NULL, NULL, NULL, NULL, NULL)";
            MySqlCommand cmd = new MySqlCommand(addCommand, con);
            cmd.ExecuteNonQuery();
            MySqlCommand confirmCmd = new MySqlCommand("SELECT * FROM drpusers WHERE username='" + username + "' AND pass='" + encrPassword + "'", con);
            MySqlDataReader newReader = confirmCmd.ExecuteReader();
            newReader.Read();
            string uid = newReader["userID"].ToString();
            return new string[] { uid, username};
        }
        [WebMethod]
        public static int[] SaveValues(string[] requestValues)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try {
                con.Open();
            } catch {
                throw new Exception("An error has occurred.");
            }
            string items;
            string dateCreated = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            if (requestValues[0] == "") {
                requestValues[3] = (requestValues[3] == ""? GenerateInt() : requestValues[3]);
                items = "INSERT INTO drprequests (ticketNo, dateCreated, email, userID, pubKey, companyName, contactName, phone, address, city, state, zip, contactTimes, appType, useCase, audience, employees, accounts, updatingPrev, " +
                    "fullAccess, oses, webInter, idkos, googleStore, appleStore, descrStore, privacy, copyright, devices, attributes, layouts, referLayoutA, referLayoutB, referLayoutC, referLayoutD, referLayoutE, " +
                    "descrLayout, feats, featUser, topFeatsA, topFeatsB, topFeatsC, topFeatsD, topFeatsE, scanFeats, overallFunc, otherFeats, furtherDets, progress, currentProgress, description, lastUpdated, userAct) " +
                    "VALUES (NULL, '" + dateCreated + "', '" + requestValues[1] + "', '" + requestValues[2] + "', '" + requestValues[3] + "', ";
                int[] indices = {13,14,15,16,17,18,22,23,25,26,47};
                int count = 0;
                for (int i = 4; i < requestValues.Length - 1; i++) {
                    if (count < 10 && i == indices[count]) {
                        items += requestValues[i] + ", ";
                        count++;
                    } else
                        items += "'" + requestValues[i] + "', ";
                }
                items += "'" + dateCreated + "', '" + requestValues[requestValues.Length - 1] + "')";
            } else {
                string[] objs = {"email", "userID", "pubKey", "companyName", "contactName", "phone", "address", "city", "state", "zip", "contactTimes", "appType", "useCase", "audience", "employees", "accounts", "updatingPrev",
                    "fullAccess", "oses", "webInter", "idkos", "googleStore", "appleStore", "descrStore", "privacy", "copyright", "devices", "attributes", "layouts", "referLayoutA", "referLayoutB", "referLayoutC", "referLayoutD", "referLayoutE",
                    "descrLayout", "feats", "featUser", "topFeatsA", "topFeatsB", "topFeatsC", "topFeatsD", "topFeatsE", "scanFeats", "overallFunc", "otherFeats", "furtherDets", "progress", "currentProgress", "description", "lastUpdated", "userAct"};
                items = "UPDATE drprequests SET ";
                for (int i = 1; i < requestValues.Length - 2; i++)
                    items += objs[i] + " = '" + requestValues[i] + "', ";
                items += objs[objs.Length - 2] + " = '" + dateCreated + "', " + objs[objs.Length - 1] + " = '" + requestValues[requestValues.Length - 1] + "' WHERE ticketNo = '" + requestValues[0] + "'";
            }
            MySqlCommand cmd = new MySqlCommand(items, con);
            int linesAffect = cmd.ExecuteNonQuery();
            if (linesAffect > 0) {
                int ticketNo;
                if (requestValues[0] == "") {
                    MySqlCommand ticketNoCmd = new MySqlCommand("SELECT * FROM drprequests WHERE dateCreated='" + dateCreated + "'", con);
                    reader = ticketNoCmd.ExecuteReader();
                    reader.Read();
                    string myTicket = reader["ticketNo"].ToString();
                    ticketNo = Int32.Parse(myTicket);
                } else
                    ticketNo = Int32.Parse(requestValues[0]);
                return new int[] { Int32.Parse(requestValues[3]), ticketNo };
            }
            return new int[]{ -1, -1 };
        }
        [WebMethod]
        public static string[,] NextTicketNo(string userID)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try {
                con.Open();
            } catch {
                throw new Exception("An error has occurred.");
            }
            MySqlCommand mySqlCommand = new MySqlCommand("SELECT MAX(ticketNo) FROM drprequests", con);
            string maxI = mySqlCommand.ExecuteScalar().ToString();
            List<string[]> results = new List<string[]>();
            Int32.TryParse(maxI, out int resI);
            results.Add(new string[]{ "" + resI, "", "", "", "" });
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM drprequests WHERE userID = '" + userID + "'", con);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
                results.Add(new string[] {reader["ticketNo"].ToString(), reader["dateCreated"].ToString(), reader["appType"].ToString(), reader["contactName"].ToString(), reader["companyName"].ToString() });
            string[,] thisResults = new string[results.Count,5];
            for (int i = 0; i < results.Count; i++)
                for (int j = 0; j < results[i].Length; j++)
                    thisResults[i, j] = results[i][j];
            return thisResults;
        }
        [WebMethod]
        public static bool DeleteTickets(string[] tickets)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            try {
                con.Open();
            } catch {
                throw new Exception("An error has occurred.");
            }
            string results = "";
            for (int i = 0; i < tickets.Length - 1; i++)
                results += "ticketNo = " + tickets[i] + " OR ";
            results += "ticketNo = " + tickets[tickets.Length - 1];
            MySqlCommand mySql = new MySqlCommand("DELETE FROM drprequests WHERE " + results, con);
            int linesAffected = mySql.ExecuteNonQuery();
            if (linesAffected > 0)
                return true;
            return false;
        }
        private static string MethodEncrypt(string pass, string date)
        {
            string result = "";
            char[] modPass = new char[pass.Length];
            for (int i = 0; i < (int)(pass.Length / 2); i++)
                modPass[i] = pass[((i + 1) % 2 == 1 ? pass.Length - 1 - i : i)];
            for (int i = 0;i < pass.Length;i++) {
                result += date[pass.Length - 1 - i] + pass[i];
            }
            return result;
        }
        private static string MethodDecrypt(string pass, string data)
        {

            return "";
        }
    }
}