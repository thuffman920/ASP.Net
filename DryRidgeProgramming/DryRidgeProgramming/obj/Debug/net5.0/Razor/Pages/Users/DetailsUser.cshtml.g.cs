#pragma checksum "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "484546d96950b0b93267850c3b1a2049c5ceb2cd"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(DryRidgeProgramming.Pages.Users.Pages_Users_DetailsUser), @"mvc.1.0.razor-page", @"/Pages/Users/DetailsUser.cshtml")]
namespace DryRidgeProgramming.Pages.Users
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\_ViewImports.cshtml"
using DryRidgeProgramming;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemMetadataAttribute("RouteTemplate", "{id:int?}")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"484546d96950b0b93267850c3b1a2049c5ceb2cd", @"/Pages/Users/DetailsUser.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a7aba9b01568096dcca7aa4ce6b31abb35921bf4", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Users_DetailsUser : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "./EditUser", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "./UserIndex", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 4 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
  
    ViewData["Title"] = "Details";
    Controllers.DRPConstructor drpC = new Controllers.DRPConstructor();
    drpC.SetSaltLine(Html.DisplayFor(model => model.User.SValue).ToString());
    drpC.SetNowTime(Model.User.LastModifiedDate);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h1>Details</h1>\r\n\r\n<div>\r\n    <h4>User</h4>\r\n    <hr />\r\n    <dl class=\"row\">\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 18 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 21 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(drpC.RebuildUser(Model.User.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 24 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.FirstName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 27 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayFor(model => model.User.FirstName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 30 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.LastName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 33 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayFor(model => model.User.LastName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 36 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 39 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayFor(model => model.User.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 42 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.NumOfTickets));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 45 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayFor(model => model.User.NumOfTickets));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 48 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.NumOfRequests));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            ");
#nullable restore
#line 51 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayFor(model => model.User.NumOfRequests));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 54 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.AccountProfileColorBack));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            <div");
            BeginWriteAttribute("style", " style=\"", 1883, "\"", 1993, 3);
            WriteAttributeValue("", 1891, "width:40px;height:15px;background-color:", 1891, 40, true);
#nullable restore
#line 57 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
WriteAttributeValue("", 1931, Html.DisplayFor(model => model.User.AccountProfileColorBack), 1931, 61, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1992, ";", 1992, 1, true);
            EndWriteAttribute();
            WriteLiteral("></div>\r\n        </dd>\r\n        <dt class=\"col-sm-2\">\r\n            ");
#nullable restore
#line 60 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
       Write(Html.DisplayNameFor(model => model.User.AccountProfileColorFront));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        </dt>\r\n        <dd class=\"col-sm-10\">\r\n            <div");
            BeginWriteAttribute("style", " style=\"", 2192, "\"", 2303, 3);
            WriteAttributeValue("", 2200, "width:40px;height:15px;background-color:", 2200, 40, true);
#nullable restore
#line 63 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
WriteAttributeValue("", 2240, Html.DisplayFor(model => model.User.AccountProfileColorFront), 2240, 62, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 2302, ";", 2302, 1, true);
            EndWriteAttribute();
            WriteLiteral("></div>\r\n        </dd>\r\n    </dl>\r\n</div>\r\n<div>\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "484546d96950b0b93267850c3b1a2049c5ceb2cd10298", async() => {
                WriteLiteral("Edit");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Page = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 68 "G:\Visual Studio\DryRidgeProgramming\DryRidgeProgramming\Pages\Users\DetailsUser.cshtml"
                               WriteLiteral(Model.User.UserID);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(" |\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "484546d96950b0b93267850c3b1a2049c5ceb2cd12460", async() => {
                WriteLiteral("Back to List");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Page = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n</div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<DryRidgeProgramming.Pages.Users.DetailsModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<DryRidgeProgramming.Pages.Users.DetailsModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<DryRidgeProgramming.Pages.Users.DetailsModel>)PageContext?.ViewData;
        public DryRidgeProgramming.Pages.Users.DetailsModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591