using DryRidgeProgramming.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Linq;
using System;

namespace DryRidgeProgramming.Controllers
{
    public class HomeController : Controller
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;
        public HomeController(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public Request InitializeRequest(int clientID)
        {
            Request newRequest = new Request();
            newRequest.SValue = "";
            newRequest.DateCreated = DateTime.Now;
            if (clientID > -1)
            {
                var query = from m in _context.User
                            where m.UserID == clientID
                            select m;
                newRequest.Email = query.ToList()[0].Email;
                newRequest.UserID = clientID;
            }
            else
            {
                newRequest.Email = "";
                newRequest.UserID = -1;
            }
            newRequest.UpdatingPrevious = false;
            newRequest.AllowFullAccess = false;
            newRequest.ViolateAppleStore = false;
            newRequest.ViolateGoogleStore = false;
            newRequest.ViolatePrivacy = false;
            newRequest.ViolateCopyright = false;
            newRequest.Progress = 0.0;
            newRequest.DateUpdated = DateTime.Now;
            return newRequest;
        }
        public string[,] GetRequestValues()
        {
            return new string[,] { { "Request.UseCase", "", "", "", "", "" },  { "Request.Audience", "", "", "", "", "" },  { "Request.EmployeeNumber", "", "", "", "", "" },  {"Request.Accounts", "", "", "", "", "" },
                 {"Request.UpdatingPrevious", "", "", "", "", "" }, { "Request.AllowFullAccess", "", "", "", "", "" }, {"Request.AppType", "", "", "", "", "" }, { "Request.OsSupport", "", "", "", "", "" }, {"Request.WebInterface", "", "", "", "", "" },
                 {"Request.OSUnknown", "", "", "", "", "" }, {"Request.ViolateGoogleStore", "", "", "", "", "" }, {"Request.ViolateAppleStore", "", "", "", "", "" }, {"Request.StoreDescription", "", "", "", "", "" },
                 {"Request.ViolatePrivacy", "", "", "", "", "" }, {"Request.ViolateCopyright", "", "", "", "", "" }, {"Request.Devices", "", "", "", "", "" }, {"Request.Attributes", "", "", "", "", "" }, {"Request.Layout", "", "", "", "", "" },
                 {"Request.ReferenceLayoutA", "Request.ReferenceLayoutB", "Request.ReferenceLayoutC", "Request.ReferenceLayoutD", "Request.ReferenceLayoutE", "Request.ReferenceLayoutF" },
                 {"Request.LayoutDescription", "", "", "", "", "" }, {"Request.Features", "", "", "", "", "" }, {"Request.UserProvidedFeatures", "", "", "", "", "" }, { "Request.TopFeaturesA", "Request.TopFeaturesB",
                "Request.TopFeaturesC", "Request.TopFeaturesD", "Request.TopFeaturesE", ""}, {"Request.ScannerFeatures", "", "", "", "", "" }, {"Request.OverallFunctionality", "", "", "", "", "" }, {"Request.OtherFeatures", "", "", "", "", "" }, 
                {"Request.FurtherDetails", "", "", "", "", "" } };
        }
        public string[] NextQuestion(int[] list, int[] dummies, int curIndex, int direction)
        {
            bool isValid = false;
            for (int j = 0; j < (int)(dummies.Length / 2); j++)
                if (dummies[2 * j + 0] == curIndex + Math.Pow(-1, direction)) {
                    isValid = true;
                    break;
                }
            if (!isValid) {
                bool isGoingToDummy = false;
                for (int i = 0; i < list.Length; i++)
                    if (list[i] == curIndex + Math.Pow(-1, direction)) {
                        isGoingToDummy = true;
                        break;
                    }
                if (!isGoingToDummy)
                    return new string[] { "./UserRequests", "" + (curIndex + (int)(Math.Pow(-1, direction))) };
                return new string[] { "./UserRequests", "" + (curIndex + (int)(2 * Math.Pow(-1, direction))) };
            }
            return new string[] { "./UserRequestD", "" + (curIndex + (int)Math.Pow(-1, direction)) };
        }
    }
}
