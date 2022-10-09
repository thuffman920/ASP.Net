using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DryRidgeProgramming.Models
{
    public class Request
    {
        public int RequestID { get; set; }
        public string SValue { get; set; } = string.Empty;
        [DataType(DataType.Date)]
        public DateTime DateCreated { get; set; }
        public string Email { get; set; } = string.Empty;
        public int UserID { get; set; }
        public string CompanyName { get; set; } = string.Empty;
        public string CompanyPhone { get; set; } = string.Empty;
        public string CompanyAddress { get; set; } = string.Empty;
        public string City { get; set; } = string.Empty;
        public string State { get; set; } = string.Empty;
        public string PostalCode { get; set; } = string.Empty;
        public string ContactTimes { get; set; } = string.Empty;
        public string AppType { get; set; } = string.Empty;
        public string UseCase { get; set; } = string.Empty;
        public string Audience { get; set; } = string.Empty;
        public string EmployeeNumber { get; set; } = string.Empty;
        public string Accounts { get; set; } = string.Empty;
        public bool UpdatingPrevious { get; set; }
        public bool AllowFullAccess { get; set; }
        public string OsSupport { get; set; } = string.Empty;
        public string WebInterface { get; set; } = string.Empty;
        public string OSUnknown { get; set; } = string.Empty;
        public bool ViolateGoogleStore { get; set; }
        public bool ViolateAppleStore { get; set; }
        public string StoreDescription { get; set; } = string.Empty;
        public bool ViolatePrivacy { get; set; }
        public bool ViolateCopyright { get; set; }
        public string Devices { get; set; } = string.Empty;
        public string Attributes { get; set; } = string.Empty;
        public string Layout { get; set; } = string.Empty;
        public string ReferenceLayoutA { get; set; } = string.Empty;
        public string ReferenceLayoutB { get; set; } = string.Empty;
        public string ReferenceLayoutC { get; set; } = string.Empty;
        public string ReferenceLayoutD { get; set; } = string.Empty;
        public string ReferenceLayoutE { get; set; } = string.Empty;
        public string ReferenceLayoutF { get; set; } = string.Empty;
        public string LayoutDescription { get; set; } = string.Empty;
        public string Features { get; set; } = string.Empty;
        public string UserProvidedFeatures { get; set; } = string.Empty;
        public string TopFeaturesA { get; set; } = string.Empty;
        public string TopFeaturesB { get; set; } = string.Empty;
        public string TopFeaturesC { get; set; } = string.Empty;
        public string TopFeaturesD { get; set; } = string.Empty;
        public string TopFeaturesE { get; set; } = string.Empty;
        public string ScannerFeatures { get; set; } = string.Empty;
        public string OverallFunctionality { get; set; } = string.Empty;
        public string OtherFeatures { get; set; } = string.Empty;
        public string FurtherDetails { get; set; } = string.Empty;
        public double Progress { get; set; }
        public string ProgressShort { get; set; } = string.Empty;
        public string ProgressLong { get; set; } = string.Empty;
        [DataType(DataType.Date)]
        public DateTime DateUpdated { get; set; }
        public bool VerifiedA { get; set; }
        public bool VerifiedB { get; set; }
        public bool VerifiedC { get; set; }
        public Request CompareAndReplace(Request otherRequest)
        {
            Request newRequest = this;
            newRequest.RequestID = Int32.Parse(Compare("" + RequestID, "" + otherRequest.RequestID));
            newRequest.SValue = Compare(SValue, otherRequest.SValue);
            newRequest.DateCreated = DateTime.Parse(Compare(DateCreated.ToString(), DateCreated.ToString()));
            newRequest.Email = Compare(Email, otherRequest.Email);
            newRequest.UserID = Int32.Parse(Compare("" + UserID, "" + otherRequest.UserID));
            newRequest.CompanyName = Compare(CompanyName, otherRequest.CompanyName);
            newRequest.CompanyPhone = Compare(CompanyPhone, otherRequest.CompanyPhone);
            newRequest.CompanyAddress = Compare(CompanyAddress, otherRequest.CompanyAddress);
            newRequest.City = Compare(City, otherRequest.City);
            newRequest.State = Compare(State, otherRequest.State);
            newRequest.PostalCode = Compare(PostalCode, otherRequest.PostalCode);
            newRequest.ContactTimes = Compare(ContactTimes, otherRequest.ContactTimes);
            newRequest.AppType = Compare(AppType, otherRequest.AppType);
            newRequest.UseCase = Compare(UseCase, otherRequest.UseCase);
            newRequest.Audience = Compare(Audience, otherRequest.Audience);
            newRequest.EmployeeNumber = Compare(EmployeeNumber, otherRequest.EmployeeNumber);
            newRequest.Accounts = Compare(newRequest.Accounts, otherRequest.Accounts);
            newRequest.UpdatingPrevious = bool.Parse(Compare("" + UpdatingPrevious, "" + otherRequest.UpdatingPrevious));
            newRequest.AllowFullAccess = bool.Parse(Compare("" + AllowFullAccess, "" + otherRequest.AllowFullAccess));
            newRequest.OsSupport = Compare(OsSupport, otherRequest.OsSupport);
            newRequest.WebInterface = Compare(WebInterface, otherRequest.WebInterface);
            newRequest.OSUnknown = Compare(OSUnknown, otherRequest.OSUnknown);
            newRequest.ViolateGoogleStore = bool.Parse(Compare("" + ViolateGoogleStore, "" + otherRequest.ViolateGoogleStore));
            newRequest.ViolateAppleStore = bool.Parse(Compare("" + ViolateAppleStore, "" + otherRequest.ViolateAppleStore));
            newRequest.StoreDescription = Compare(StoreDescription, otherRequest.StoreDescription);
            newRequest.ViolatePrivacy = bool.Parse(Compare("" + ViolatePrivacy, "" + otherRequest.ViolatePrivacy));
            newRequest.ViolateCopyright = bool.Parse(Compare("" + ViolateCopyright, "" + otherRequest.ViolateCopyright));
            newRequest.Devices = Compare(Devices, otherRequest.Devices);
            newRequest.Attributes = Compare(Attributes, otherRequest.Attributes);
            newRequest.Layout = Compare(Layout, otherRequest.Layout);
            newRequest.ReferenceLayoutA = Compare(ReferenceLayoutA, otherRequest.ReferenceLayoutA);
            newRequest.ReferenceLayoutB = Compare(ReferenceLayoutB, otherRequest.ReferenceLayoutB);
            newRequest.ReferenceLayoutC = Compare(ReferenceLayoutC, otherRequest.ReferenceLayoutC);
            newRequest.ReferenceLayoutD = Compare(ReferenceLayoutD, otherRequest.ReferenceLayoutD);
            newRequest.ReferenceLayoutE = Compare(ReferenceLayoutE, otherRequest.ReferenceLayoutE);
            newRequest.ReferenceLayoutF = Compare(ReferenceLayoutF, otherRequest.ReferenceLayoutF);
            newRequest.LayoutDescription = Compare(LayoutDescription, otherRequest.LayoutDescription);
            newRequest.Features = Compare(Features, otherRequest.Features);
            newRequest.UserProvidedFeatures = Compare(UserProvidedFeatures, otherRequest.UserProvidedFeatures);
            newRequest.TopFeaturesA = Compare(TopFeaturesA, otherRequest.TopFeaturesA);
            newRequest.TopFeaturesB = Compare(TopFeaturesB, otherRequest.TopFeaturesB);
            newRequest.TopFeaturesC = Compare(TopFeaturesC, otherRequest.TopFeaturesC);
            newRequest.TopFeaturesD = Compare(TopFeaturesD, otherRequest.TopFeaturesD);
            newRequest.TopFeaturesE = Compare(TopFeaturesA, otherRequest.TopFeaturesE);
            newRequest.ScannerFeatures = Compare(ScannerFeatures, otherRequest.ScannerFeatures);
            newRequest.OverallFunctionality = Compare(OverallFunctionality, otherRequest.OverallFunctionality);
            newRequest.OtherFeatures = Compare(OtherFeatures, otherRequest.OtherFeatures);
            newRequest.FurtherDetails = Compare(FurtherDetails, otherRequest.FurtherDetails);
            newRequest.Progress = double.Parse(Compare("" + Progress, "" + otherRequest.Progress));
            newRequest.ProgressShort = Compare(ProgressShort, otherRequest.ProgressShort);
            newRequest.ProgressLong = Compare(ProgressLong, otherRequest.ProgressLong);
            newRequest.DateUpdated = DateTime.Parse(Compare(DateUpdated.ToString(), otherRequest.DateUpdated.ToString()));
            newRequest.VerifiedA = bool.Parse(Compare("" + VerifiedA, "" + otherRequest.VerifiedA));
            newRequest.VerifiedB = bool.Parse(Compare("" + VerifiedB, "" + otherRequest.VerifiedB));
            newRequest.VerifiedC = bool.Parse(Compare("" + VerifiedC, "" + otherRequest.VerifiedC));
            return newRequest;
        }
        private string Compare(string A, string B)
        {
            if (A != B && B != null && B != string.Empty)
                return B;
            return A; 
        } 
    }
}
