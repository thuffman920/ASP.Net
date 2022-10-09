<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SampleLogin_C.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Log In</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link type="text/css" rel="stylesheet" href="accountStyle.css" />
        <link rel="shortcut icon" href="/Dry%20Ridge%20Programming%20Title%20Bar_5.jpg" type="image/jpg" sizes="16x16 32x32" />
        <style>
        </style>
    </head>
    <body>
        <div class="main">
            <div class="header">
                <h1 style="color: blue; font-weight: bold;">Log In</h1>
            </div>
            <form id="form1" runat="server" method="post" name="form1" autocomplete='off'>
                <div id="warning" class="input-item">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Username and password are required" ForeColor="Red" style="display: none;"></asp:Label>
                </div>
                <div class="input-item" style="display: grid; grid-template-columns: 40px 1fr;">
                    <i class="material-icons" style="font-size: 36px; padding-left: 3px; padding-top: 3px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">person</i>
                    <asp:textbox runat="server" ID="txtUserName" placeholder="Username" onkeyup="clearFUser(event)"></asp:textbox>
                </div>
                <div class="input-item" style="display: grid; grid-template-columns: 40px 1fr;">
                    <i class="material-icons" style="font-size: 28px; padding-top: 7px; padding-left: 7px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">lock</i>
                    <asp:textbox runat="server" ID="txtPassword" textmode="password" placeholder="Password" onkeyup="clearFPass(event)" Text=""></asp:textbox>
                </div>
                <div class="input-item-button">
                    <asp:Button runat="server" name="btnLogin_Click" Text="Login" onclick="btnLogin_Click" OnClientClick="return required();" style="color: blue; background-color: #f26722;"></asp:Button>
                    <p>Don't have an account? <a href="register.aspx">Sign Up</a></p>
                </div>
            </form>
        </div>
    </body>
    <script type="text/javascript" lang="js">
        function clearFUser(key) {
            var user = document.getElementById("<%=txtUserName.ClientID %>");
            var keynum = getKeyCode(key);
            if (user.value != "") {
                user.style.border = "1px solid blue";
                user.style.backgroundColor = 'white';
                changeBorderColor("<%=txtUserName.ClientID %>");
            } else if (keynum != 9) {
                user.style.border = "3px solid red";
                user.style.backgroundColor = "rgba(255,0,0,0.3)";
            }
        }
        function clearFPass(key) {
            var pass = document.getElementById("<%=txtPassword.ClientID %>");
            var keynum = getKeyCode(key);
            if (pass.value != "") {
                pass.style.border = "1px solid blue";
                pass.style.backgroundColor = 'white';
                changeBorderColor("<%=txtPassword.ClientID %>");
            } else if (keynum != 9) {
                pass.style.border = "3px solid red";
                pass.style.backgroundColor = "rgba(255,0,0,0.3)";
            }
        }
        function getKeyCode(key) {
            if (window.event)
                return key.keyCode;
            else if (key.which)
                return key.which;
            return null;
        }
        function changeBorderColor(click_id) {
            if (click_id == "<%=txtPassword.ClientID %>" && document.getElementById("<%=txtPassword.ClientID %>").style.border != '3px solid red')
                document.getElementById("<%=txtPassword.ClientID %>").style.border = "1px solid #f26722";
            if (click_id == "<%=txtUserName.ClientID %>" && document.getElementById("<%=txtUserName.ClientID %>").style.border != '3px solid red')
                document.getElementById("<%=txtUserName.ClientID %>").style.border = "1px solid #f26722";
        }
    </script>
</html>
