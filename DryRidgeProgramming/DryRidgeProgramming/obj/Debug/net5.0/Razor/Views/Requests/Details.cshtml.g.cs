#pragma checksum "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "90d71c2b47b733ef5831528fdad764d88d8907dd"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Requests_Details), @"mvc.1.0.view", @"/Views/Requests/Details.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"90d71c2b47b733ef5831528fdad764d88d8907dd", @"/Views/Requests/Details.cshtml")]
    public class Views_Requests_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<DryRidgeProgramming.Models.Request>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
  
    ViewData["Title"] = "Details";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h1>Details</h1>\r\n\r\n<div>\r\n    <h4>Request</h4>\r\n    <hr />\r\n    <dl class=\"row\">\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 14 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.SValue));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 17 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.SValue));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 20 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.DateCreated));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 23 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.DateCreated));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 26 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 29 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 32 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.UserID));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 35 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.UserID));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 38 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.CompanyName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 41 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.CompanyName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 44 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.CompanyPhone));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 47 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.CompanyPhone));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 50 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.CompanyAddress));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 53 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.CompanyAddress));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 56 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.City));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 59 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.City));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 62 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.State));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 65 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.State));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 68 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.PostalCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 71 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.PostalCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 74 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ContactTimes));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 77 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ContactTimes));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 80 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.AppType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 83 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.AppType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 86 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.UseCase));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 89 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.UseCase));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 92 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Audience));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 95 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Audience));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 98 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.EmployeeNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 101 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.EmployeeNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 104 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Accounts));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 107 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Accounts));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 110 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.UpdatingPrevious));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 113 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.UpdatingPrevious));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 116 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.AllowFullAccess));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 119 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.AllowFullAccess));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 122 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.OsSupport));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 125 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.OsSupport));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 128 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.WebInterface));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 131 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.WebInterface));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 134 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.OSUnknown));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 137 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.OSUnknown));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 140 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ViolateGoogleStore));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 143 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ViolateGoogleStore));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 146 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ViolateAppleStore));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 149 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ViolateAppleStore));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 152 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.StoreDescription));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 155 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.StoreDescription));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 158 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ViolatePrivacy));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 161 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ViolatePrivacy));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 164 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ViolateCopyright));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 167 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ViolateCopyright));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 170 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Devices));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 173 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Devices));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 176 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Attributes));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 179 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Attributes));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 182 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Layout));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 185 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Layout));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 188 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutA));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 191 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutA));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 194 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutB));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 197 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutB));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 200 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 203 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 206 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutD));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 209 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutD));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 212 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutE));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 215 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutE));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 218 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ReferenceLayoutF));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 221 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ReferenceLayoutF));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 224 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.LayoutDescription));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 227 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.LayoutDescription));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 230 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Features));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 233 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Features));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 236 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.UserProvidedFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 239 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.UserProvidedFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 242 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.TopFeaturesA));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 245 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.TopFeaturesA));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 248 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.TopFeaturesB));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 251 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.TopFeaturesB));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 254 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.TopFeaturesC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 257 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.TopFeaturesC));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 260 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.TopFeaturesD));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 263 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.TopFeaturesD));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 266 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.TopFeaturesE));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 269 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.TopFeaturesE));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 272 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ScannerFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 275 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ScannerFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 278 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.OverallFunctionality));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 281 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.OverallFunctionality));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 284 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.OtherFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 287 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.OtherFeatures));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 290 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.FurtherDetails));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 293 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.FurtherDetails));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 296 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Progress));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 299 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.Progress));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 302 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ProgressShort));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 305 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ProgressShort));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 308 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.ProgressLong));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 311 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.ProgressLong));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class = \"col-sm-2\">\r\n            ");
#nullable restore
#line 314 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.DateUpdated));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class = \"col-sm-10\">\r\n            ");
#nullable restore
#line 317 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
       Write(Html.DisplayFor(model => model.DateUpdated));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n    </dl>\r\n</div>\r\n<div>\r\n    <a asp-action=\"Edit\"");
            BeginWriteAttribute("asp-route-id", " asp-route-id=\"", 11392, "\"", 11423, 1);
#nullable restore
#line 322 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Views\Requests\Details.cshtml"
WriteAttributeValue("", 11407, Model.RequestID, 11407, 16, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">Edit</a> |\r\n    <a asp-action=\"Index\">Back to List</a>\r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<DryRidgeProgramming.Models.Request> Html { get; private set; }
    }
}
#pragma warning restore 1591
