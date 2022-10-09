using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SampleLogin_C
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string GetMessage(string message)
        {
            return "" + WebForm1.ellasResponse(message);
        }
        [WebMethod]
        public string GetMessageWeb(string message)
        {
            return "" + WebForm1.ellasResponseWeb(message);
        }
        [WebMethod]
        public int[] SaveRequest(string[] values)
        {
            return NewRequest.SaveValues(values);
        }
        [WebMethod]
        public string[] LoginRequest(string username, string password)
        {
            string[] result = NewRequest.LoginAcc(username, password);
            if (result == null)
                throw new Exception("The username and/or password is incorrect.");
            return result;
        }
        [WebMethod]
        public string[] CreateRequest(string fname, string lname, string email, string phone, string username, string password)
        {
            string[] result = NewRequest.CreateAcc(fname, lname, email, phone, username, password);
            if (result == null)
                throw new Exception();
            return result;
        }
        [WebMethod]
        public string[,] GetNextTicketNo(string userID)
        {
            return NewRequest.NextTicketNo(userID);
        }
        [WebMethod]
        public bool DeleteTicket(string[] tickets)
        {
            return NewRequest.DeleteTickets(tickets);
        }
    }
}
