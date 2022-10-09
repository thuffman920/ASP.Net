<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SampleLogin_C.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link type="text/css" rel="stylesheet" href="accountStyle.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link rel="shortcut icon" href="/Dry%20Ridge%20Programming%20Title%20Bar_5.jpg" type="image/jpg" sizes="16x16 32x32" />
        <style>
            h3 {
              padding: 0;
              margin: 0;
            }
            h5 {
                padding: 0;
                margin: 0;
            }
            #warninga, #warningb {
                text-align: center;
                padding: 18px 0 0 0;
            }
            .form {
                display: grid;
                grid-template-rows: 25px 60px 60px 60px 60px 60px 60px 85px 60px;
            }
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 20%; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.65); /* Black w/ opacity */
            }
            .modal-content {
                background-color: rgba(0,0,255,0.835);
                margin: auto;
                padding: 20px;
                border: 4px solid #f26722;
                border-radius: 10px 10px;
                width: 35%;
                height: 35%;
                color: #f26722;
            }
            .close {
                color: #aaaaaa;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }
            .close:hover, .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div id="main" class="main" onclick="unablePasswordInfo(this.id)">
            <div class="header">
                <h1 style="color: blue;">Sign Up</h1>
            </div>
            <form runat="server" id="form2" method="post" class="form" autocomplete="off">
                <div id="warninga" runat="server">
                    <asp:Label ID="notMet" runat="server" Text="You have not met the requirements." ForeColor="Red" style="display: none;"></asp:Label>
                </div>
                <div id="warningb" runat="server">
                    <asp:Label ID="itExists" runat="server" Text="The username or email has an account. If it is yours, please feel free to log in." ForeColor="Red" style="display: none;"></asp:Label>
                </div>
                <div class="input-item" style="grid-row: 2 / 3;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px; padding-bottom: 20px;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 36px; padding-left: 3px; padding-top: 3px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">person</i>
                            <asp:textbox runat="server" type="text" id="fullname" placeholder="Full Name" onkeyup="unablePasswordInfo(this.id)"></asp:textbox>
                        </div>
                        <h3 id="setFNameX" style="color: red; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;">X</h3>
                        <i id="setFNameY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                </div>
                <div class="input-item" style="grid-row: 3 / 4;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px;">
                        <h5 style="visibility: hidden;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 28px; padding-top: 8px; padding-left: 7px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">business</i>
                            <asp:textbox runat="server" type="text" id="companyname" placeholder="Company Name" onclick="unablePasswordInfo(this.id)" onkeypress="unablePasswordInfo()"></asp:textbox>
                        </div>

                    </div>
                </div>
                <div class="input-item" style="grid-row: 4 / 5;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 28px; padding-top: 7px; padding-left: 7px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">email</i>
                            <asp:textbox runat="server" type="text" name="email" id="email" placeholder="Email" onkeyup="unablePasswordInfo(this.id)"></asp:textbox>
                        </div>
                        <h3 id="setEmailX" style="color: red; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;">X</h3>
                        <i id="setEmailY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                </div>
                <div class="input-item" style="grid-row: 5 / 6;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 32px; padding-top: 5px; padding-left: 5px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">phone</i>
                            <asp:textbox runat="server" type="text" id="phone" placeholder="(___) ___-____ x____" maxlength="22" onkeyup="unablePasswordInfo(this.id)"></asp:textbox>
                        </div>
                        <h3 id="setPhoneX" style="color: red; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;">X</h3>
                        <i id="setPhoneY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                </div>
                <div class="input-item" style="grid-row: 6 / 7;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 36px; padding-top: 3px; padding-left: 3px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">person</i>
                            <asp:textbox runat="server" type="text" name="username" id="username" placeholder="Username" onkeyup="unablePasswordInfo(this.id)"></asp:textbox>
                        </div>
                        <h3 id="setUNameX" style="color: red; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;">X</h3>
                        <i id="setUNameY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                </div>
                <div class="input-item" style="grid-row: 7 / 8;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px; grid-template-rows: 20px; align-content: center;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 28px; padding-top: 7px; padding-left: 7px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">lock</i>
                            <asp:textbox runat="server" type="password" id="password" name="password" placeholder="Password" onClick="enablePasswordInfo()" onkeyup="enablePasswordInfo()"></asp:textbox>
                        </div>
                        <h3 id="setPassX" style="color: red; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;">X</h3>
                        <i id="setPassY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                    <div id="passwordInfo" class="password_verify" style="display: none;">
                        <div class="oneCapital" style="display: grid; grid-template-columns: 25px 1fr;">
                            <h3 id="aCapX" style="color: red; font-weight: bold;">X</h3>
                            <i id="aCapY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none;"></i>
                            <h3>At least one capital letter</h3>
                        </div>
                        <div class="oneLowercase" style="display: grid; grid-template-columns: 25px 1fr;">
                            <h3 id="aLowX" style="color: red; font-weight: bold;">X</h3>
                            <i id="aLowY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none;"></i>
                            <h3>At least one lowercase letter</h3>
                        </div>
                        <div class="oneNumber" style="display: grid; grid-template-columns: 25px 1fr;">
                            <h3 id="aNumX" style="color: red; font-weight: bold;">X</h3>
                            <i id="aNumY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none;"></i>
                            <h3>At least one number</h3>
                        </div>
                        <div class="oneSymbol" style="display: grid; grid-template-columns: 25px 1fr;">
                            <h3 id="aSymX" style="color: red; font-weight: bold;">X</h3>
                            <i id="aSymY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none;"></i>
                            <h3>At least one symbol</h3>
                        </div>
                        <div class="minMaxLength" style="display: grid; grid-template-columns: 25px 1fr;">
                            <h3 id="mmLenX" style="color: red; font-weight: bold;">X</h3>
                            <i id="mmLenY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none;"></i>
                            <h3>Has 8 to 31 characters</h3>
                        </div>
                    </div>
                </div>
                <div class="input-item"  style="grid-row: 8 / 9;">
                    <div style="display: grid; grid-template-columns: 10px 1fr 30px;">
                        <h5 style="color: red; font-weight: bold;">*</h5>
                        <div style="display: grid; grid-template-columns: 40px 1fr;">
                            <i class="material-icons" style="font-size: 28px; padding-top: 7px; padding-left: 7px; background-color: #f26722; color: blue; border-top-left-radius: 5px; border-bottom-left-radius: 5px;">lock</i>
                            <asp:textbox runat="server" type="password" id="confirm" placeholder="Confirm Password" onkeyup="unablePasswordInfo(this.id)"></asp:textbox>
                        </div>
                        <h3 runat="server" id="confirmX" style="color: red; font-weight: bold; display: none; padding-left: 10px;">X</h3>
                        <i runat="server" id="confirmY" class="fa fa-check" style="color: green; font-size: 1.17em; font-weight: bold; display: none; padding-top: 10px; padding-left: 10px;"></i>
                    </div>
                </div>
                <div class="input-item-button" style="grid-row: 9 / 10;">
                    <asp:button runat="server" type="submit" id="submit" name='reg_Submit' Text="Register" style="color: blue; background-color: #f26722; font-weight: bold;" onclick="btnReg_Click" />
                    <p>Already a member? <a href="login.aspx">Log In</a></p>
                </div>
            </form>
        </div>
        <div runat="server" id="confirmation" class="modal" >
            <div class="modal-content">
                <span class="close">&times;</span>
                <h1 style="text-align: center;">Success!</h1>
                <p>You have been successfully added. Please sign back in to access you account.</p>
                <p></p>
                <a href="Login.aspx" style="color: #f26722; text-decoration: none;""><h3 style="text-align: center;">Log In</h3></a>
            </div>
        </div>
    </body>
    <script>
        document.getElementsByClassName("close")[0].onclick = function () {
            document.getElementById("<%=confirmation.ClientID%>").style.display = "none";
        }
        document.getElementById('<%=phone.ClientID %>').addEventListener('input', function(value) {
            this.type = 'text';
            var number = this.value;
            var delimitOrig = number.replace(/[^0-9]/g, '');
            var format = "";
            if (delimitOrig.length > 11)
                this.value = delimitOrig.substring(0, 1) +" (" + delimitOrig.substring(1, 4) + ") " + delimitOrig.substring(4, 7) + "-" + delimitOrig.substring(7, 11) + " x" + delimitOrig.substring(11);
            else if (delimitOrig.length === 11)
                this.value = delimitOrig.substring(0, 1) + " (" + delimitOrig.substring(1, 4) + ") " + delimitOrig.substring(4, 7) + "-" + delimitOrig.substring(7);
            else if (delimitOrig.length > 6)
                this.value = "(" + delimitOrig.substring(0, 3) + ") " + delimitOrig.substring(3, 6) + "-" + delimitOrig.substring(6);
            else if (delimitOrig.length > 3)
                this.value = "(" + delimitOrig.substring(0, 3) + ") " + delimitOrig.substring(3);
            else if (delimitOrig.length > 0)
                this.value = "(" + delimitOrig;
            else 
                this.value = "";
            if (delimitOrig.length >= 10) {
                document.getElementById('setPhoneY').style.display = "block";
                document.getElementById('setPhoneX').style.display = "none";
            } else {
                document.getElementById('setPhoneX').style.display = "block";
                document.getElementById('setPhoneY').style.display = "none";
            }
        });
        document.getElementById('email').addEventListener('input', function(value) {
            this.type = 'text';
            var email = this.value;
            if (email.indexOf("@") > 0 && email.substring(email.indexOf("@")).lastIndexOf(".") > 0) {
                document.getElementById('setEmailY').style.display = "block";
                document.getElementById('setEmailX').style.display = "none";
            } else {
                document.getElementById('setEmailX').style.display = "block";
                document.getElementById('setEmailY').style.display = "none";
            }
        });
        document.getElementById('<%=password.ClientID %>').addEventListener('input', function(value) {
            this.type = '<%=password.ClientID %>';
            var pass = this.value;
            if (pass.length >= 8 && pass.length <= 31) {
                document.getElementById('mmLenY').style.display = "block";
                document.getElementById('mmLenX').style.display = "none";
            } else {
                document.getElementById('mmLenX').style.display = "block";
                document.getElementById('mmLenY').style.display = "none";
            }
            var passCap = pass.replace(/[^A-Z]/g, '');
            if (passCap.length > 0) {
                document.getElementById('aCapY').style.display = "block";
                document.getElementById('aCapX').style.display = "none";
            } else {
                document.getElementById('aCapX').style.display = "block";
                document.getElementById('aCapY').style.display = "none";
            }
            var passNum = pass.replace(/[^0-9]/g, '');
            if (passNum.length > 0) {
                document.getElementById('aNumY').style.display = "block";
                document.getElementById('aNumX').style.display = "none";
            } else {
                document.getElementById('aNumX').style.display = "block";
                document.getElementById('aNumY').style.display = "none";
            }
            var passLow = pass.replace(/[^a-z]/g, '');
            if (passLow.length > 0) {
                document.getElementById('aLowY').style.display = "block";
                document.getElementById('aLowX').style.display = "none";
            } else {
                document.getElementById('aLowX').style.display = "block";
                document.getElementById('aLowY').style.display = "none";
            }
            var passSym = pass.replace(/[a-zA-Z0-9]/g, '');
            if (passSym.length > 0) {
                document.getElementById('aSymY').style.display = "block";
                document.getElementById('aSymX').style.display = "none";
            } else {
                document.getElementById('aSymX').style.display = "block";
                document.getElementById('aSymY').style.display = "none";
            }
            if (pass.length >= 8 && pass.length <= 31 && passCap.length > 0 && passNum.length > 0 && passSym.length > 0) {
                document.getElementById('setPassY').style.display = "block";
                document.getElementById('setPassX').style.display = "none";
            } else {
                document.getElementById('setPassX').style.display = "block";
                document.getElementById('setPassY').style.display = "none";
            }
        });
        document.getElementById('<%=confirm.ClientID %>').addEventListener('input', function(value) {
            this.type = "<%=password.ClientID %>";
            var passCon = this.value;
            var pass = document.getElementById('<%=password.ClientID %>').value;
            if (passCon !== pass) {
                document.getElementById('confirmX').style.display = "block";
                document.getElementById('confirmY').style.display = "none";
            } else {
                document.getElementById('confirmY').style.display = "block";
                document.getElementById('confirmX').style.display = "none";
            }
        });
        document.getElementById('<%=fullname.ClientID %>').addEventListener('input', function (value) {
            if (this.value.length > 0 && this.value.indexOf(" ") > 0) {
                document.getElementById('setFNameY').style.display = "block";
                document.getElementById('setFNameX').style.display = "none";
            } else {
                document.getElementById('setFNameX').style.display = "block";
                document.getElementById('setFNameY').style.display = "none";
            }
        });
        function enablePasswordInfo() {
            document.getElementsByClassName("form")[0].style.gridTemplateRows = "25px 60px 60px 60px 60px 60px 1fr 85px 60px";
            document.getElementById('passwordInfo').style.display = "block";
            document.getElementById('<%=password.ClientID %>').style.border = '1px solid blue';
            document.getElementById('<%=password.ClientID %>').style.backgroundColor = 'white';
            changeBorderColor('<%=password.ClientID %>');
        }
        function errorHandling(click_id, reference) {
            if (click_id == reference && document.getElementById(reference).value != "") {
                document.getElementById(reference).style.border = '1px solid blue';
                document.getElementById(reference).style.backgroundColor = 'white';
                changeBorderColor(click_id);
            } else if (click_id == reference) {
                document.getElementById(reference).style.border = '3px solid red';
                document.getElementById(reference).style.backgroundColor = 'rgba(255,0,0,0.3)';
            }
        }
        function unablePasswordInfo(click_id) {
            document.getElementById('passwordInfo').style.display = "none";
            document.getElementsByClassName("form")[0].style.gridTemplateRows = "25px 60px 60px 60px 60px 60px 60px 85px 60px";
            errorHandling(click_id, '<%=fullname.ClientID %>');
            errorHandling(click_id, '<%=email.ClientID %>');
            errorHandling(click_id, '<%=phone.ClientID %>');
            errorHandling(click_id, '<%=username.ClientID %>');
            errorHandling(click_id, '<%=confirm.ClientID %>');
            errorHandling(click_id, '<%=companyname.ClientID %>');
            if (click_id == "main")
                changeBorderColor(click_id);
        }
        function changeBorderColor(click_id) {
            if (click_id != "<%=fullname.ClientID %>" && document.getElementById('<%=fullname.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=fullname.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=email.ClientID %>" && document.getElementById('<%=email.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=email.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=phone.ClientID %>" && document.getElementById('<%=phone.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=phone.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=username.ClientID %>" && document.getElementById('<%=username.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=username.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=confirm.ClientID %>" && document.getElementById('<%=confirm.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=confirm.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=password.ClientID %>" && document.getElementById('<%=password.ClientID %>').style.border != "3px solid red")
                document.getElementById('<%=password.ClientID %>').style.border = '1px solid #f26722';
            if (click_id != "<%=companyname.ClientID %>")
                document.getElementById('<%=companyname.ClientID %>').style.border = '1px solid #f26722';
        }
        function required() {
            var fullname = document.getElementById('<%=fullname.ClientID %>').value;
            var email = document.getElementById('<%=email.ClientID %>').value;
            var phone = document.getElementById('<%=phone.ClientID %>').value;
            var username = document.getElementById('<%=username.ClientID %>').value;
            var password = document.getElementById('<%=password.ClientID %>').value;
            var confpassword = document.getElementById('<%=confirm.ClientID %>').value;
            if (fullname == "" || email == "" || phone == "" || username == "" || password == "" || confpassword == "") {
                document.getElementById('warninga').style.display = "block";
                if (fullname == "") {
                    document.getElementById('<%=fullname.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=fullname.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (email == "") {
                    document.getElementById('<%=email.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=email.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (phone == "") {
                    document.getElementById('<%=phone.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=phone.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (username == "") {
                    document.getElementById('<%=username.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=username.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (password == "") {
                    document.getElementById('<%=password.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=password.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (confpassword == "") {
                    document.getElementById('<%=confirm.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=confirm.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                checkForXs();
                return false;
            } else 
                return checkForXs(); 
        }
        function checkForXs() {
            var fullname = document.getElementById('setFNameX').style.display;
            var email = document.getElementById("setEmailX").style.display;
            var phone = document.getElementById("setPhoneX").style.display;
            var username = document.getElementById("setUNameX").style.display;
            var password = document.getElementById("setPassX").style.display;
            var confpassword = document.getElementById("confirmX").style.display;
            if (fullname == "block" || email == "block" || phone == "block" || username == "block" || password == "block" || confpassword == "block") {
                document.getElementById('warningb').style.display = "block";
                if (fullname == "block") {
                    document.getElementById('<%=fullname.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=fullname.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (email == "block") {
                    document.getElementById('<%=email.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=email.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (phone == "block") {
                    document.getElementById('<%=phone.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=phone.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (username == "block") {
                    document.getElementById('<%=username.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=username.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (password == "block") {
                    document.getElementById('<%=password.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=password.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                if (confpassword == "block") {
                    document.getElementById('<%=confirm.ClientID %>').style.border = '3px solid red';
                    document.getElementById('<%=confirm.ClientID %>').style.backgroundColor = 'rgba(255,0,0,0.3)';
                }
                return false;
            }
            return true;
        }
    </script>
</html>