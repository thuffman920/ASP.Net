<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="SampleLogin_C.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>My Account</title>
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="-1" />
        <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
        <link type="text/css" rel="stylesheet" href="accountStyle.css" />
        <link rel="shortcut icon" href="/Dry%20Ridge%20Programming%20Title%20Bar_5.jpg" type="image/jpg" sizes="16x16 32x32" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-circle-progress/1.1.3/circle-progress.min.js"></script>
        <style>
            .in_header {
                display: grid;
                grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
            }
            .item-account h2 {
                text-align: center;
                padding: 0;
                margin: 0;
            }
            .requests {
                margin-left: 2.5%;
                width: 95%;
                border-collapse: collapse;
                text-align: center;
            }
            .requests td, td {
                padding: 2px 7px;
            }
            .requests th {
                border-bottom: 1px solid black;
            }
            #workRepair {
                display: none;
            }
            #payment {
                margin-left: 15%;
                width: 70%;
            }
            #order {
                margin-left: 0%;
                width: 100%;
            }
            #information {
                margin-left: 5%;
                width: 90%;
            }
            .item-account {
                transition-duration: .1s;
                transition-timing-function: linear;
                transition-property: transform, box-shadow;
            }
            .item-account:hover {
                transform: translate3d(-5px, -10px, 5px);
                box-shadow: 5px 10px 5px #f26722;
            }
            #balance {
                margin-left: 25%;
                width: 50%;
                height: 50%;
            }
            .circle {
                width: 200px;
                margin: 6px auto;
                display: inline-block;
                position: relative;
                text-align: center;
                vertical-align: top;
                padding: 20px 0;
                width: 100%;
            }
            .circle strong {
                position: absolute;
                top: 48px;
                left: 0;
                width: 100%;
                color: #f26722;
                text-align: center;
                line-height: 45px;
                font-size: 36px;
            }
            #all-hist{
                margin-left: 40%;
                padding-bottom: 30px;
                cursor: pointer;
            }
            .history {
                margin-left: 7.5%;
                margin-right: 7.5%;
                display: none;
            }
            .hist-step, .hist-step-whole {
                grid-column: 1 / span 2;
                padding-bottom: 2px;
            }
            .hist-step {
                cursor: pointer;
            }
            .hist-part {
                grid-column: 2 / span 5;
                padding-top: 2px;
                cursor: pointer;
            }
            .hist-part-des {
                grid-column: 3 / span 4;
                padding-top: 5px;
                padding-bottom: 5px;
                display: none;
            }
            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                padding-top: 20%;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(255,255,255);
                background-color: rgba(255,255,255,0.85);
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
        <div class="main-account">
            <div class="gridlayout">
                <div id="sidemenu">
                    <div style="padding-bottom:15px;"><span style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776;</span></div>
                    <h3 class="menuoption" style="padding:0;margin:0;"><a href="#">New Request</a></h3>
                    <h3 class="menuoption" style="padding:0;margin:0;"><a href="#"></a></h3>
                    <h3 class="menuoption" style="padding:0;margin:0;"><a href="#">Contact Us</a></h3>
                    <hr class="menuoption" style="padding:0;margin: 5px 0;width:50%;align-self:start;" />
                    <h3 class="menuoption" style="padding:0;margin:0;"><a href="#">Personal Information</a></h3>
                    <h3 class="menuoption" style="padding:0;margin:0;"><a onclick="signOut()">Log Out</a></h3>
                </div>
                <div id="orderhist" class="item-account" style="margin: 15px;border: 1px solid #000;padding: 20px;">
                    <h2>My Recent Order</h2>
                    <div runat="server" id="myOrders" class="orders circle">
                        <strong runat="server" id="orderpercent"></strong>
                    </div>
                    <a id="all-hist" onclick="enableDetails(this.id)">All History &#9660;</a>
                    <div id="history" class="history" style="grid-template-columns: 20px 1fr;">
                        <a id="hist-1" class="hist-step" onclick="enableDetails(this.id)">First Stage &#9660;</a>
                        <div id="hist-1-part" class="hist-step-whole" style="display: grid; grid-template-columns: 20px 20px 20px 1fr 1fr 1fr;">
                            <a id="hist-1a" class="hist-part" onclick="enableDetails(this.id)"> First Stage, Part A &#9660;</a>
                            <p id="hist-1a-des" class="hist-part-des">A description of the first part of the First Stage</p>
                            <a id="hist-1b" class="hist-part" onclick="enableDetails(this.id)"> First Stage, Part B &#9660;</a>
                            <p id="hist-1b-des" class="hist-part-des">A description of the second part of the First Stage</p>
                            <a id="hist-1c" class="hist-part" onclick="enableDetails(this.id)"> First Stage, Part C &#9660;</a>
                            <p id="hist-1c-des" class="hist-part-des">A description of the third part of the First Stage</p>
                        </div>
                        <a id="hist-2" class="hist-step" onclick="enableDetails(this.id)">Second Stage &#9660;</a>
                        <div id="hist-2-part" class="hist-step-whole" style="display: grid; grid-template-columns: 20px 20px 20px 1fr 1fr 1fr;">
                            <a id="hist-2a" class="hist-part" onclick="enableDetails(this.id)"> Second Stage, Part A &#9660;</a>
                            <p id="hist-2a-des" class="hist-part-des">A description of the first part of the Second Stage</p>
                            <a id="hist-2b" class="hist-part" onclick="enableDetails(this.id)"> Second Stage, Part B &#9660;</a>
                            <p id="hist-2b-des" class="hist-part-des">A description of the second part of the Second Stage</p>
                            <a id="hist-2c" class="hist-part" onclick="enableDetails(this.id)"> Second Stage, Part C &#9660;</a>
                            <p id="hist-2c-des" class="hist-part-des">A description of the third part of the Second Stage</p>
                        </div>
                    </div>
                    <table id="order">
                        <tr>
                            <td>Current Stage: </td>
                            <td id="current"><a id="progressDetails" onclick="enableDetails(this.id)" href="#">Finished &#9660;</a></td>
                        </tr>
                        <tr id="workRepair">
                            <td></td>
                            <td id="details">The work has been completed on this repair.</td>
                        </tr>
                        <tr>
                            <td>Estimated Time Left: </td>
                            <td id="eta"></td>
                        </tr>
                    </table>
                    <h4 style="text-align: center;"><a href="./orders.php" style="text-decoration: none; padding: 0; margin: 0;">All Orders</a></h4>
                </div>
                <div id="requesthist" class="item-account" style="margin: 15px;border: 1px solid #000;padding: 20px;">
                    <h2>My Requests</h2>
                    <div runat="server" id="myRequests" class="progRequests circle">
                        <strong runat="server" id="requestpercent"></strong>
                    </div>
                    <table class="requests">
                        <tr>
                            <th style="border-right: 1px solid black;">Date:</th>
                            <th style="border-right: 1px solid black;">Title:</th>
                            <th>Status:</th>
                        </tr>
                        <tr id="request1">
                            <td id="r1Date" style="border-right: 1px solid black;">
                                <div>08/11/2019</div>
                            </td>
                            <td id="r1Title" style="border-right: 1px solid black;">
                                <div>Phone Application</div>
                            </td>
                            <td id="r1Status">
                                <div>Completed</div>
                            </td>
                        </tr>
                        <tr class="request2">
                            <td id="r2Date" style="border-right: 1px solid black;">
                                <div>07/01/2019</div>
                            </td>
                            <td id="r2Title" style="border-right: 1px solid black;">
                                <div>Website</div>
                            </td>
                            <td id="r2Status">
                                <div>Denied</div>
                            </td>
                        </tr>
                        <tr class="request3" style="display: none;">
                            <td id="r3Date" style="border-right: 1px solid black;">
                                <div></div>
                            </td>
                            <td id="r3Title" style="border-right: 1px solid black;">
                                <div></div>
                            </td>
                            <td id="r3Status">
                                <div></div>
                            </td>
                        </tr>
                        <tr class="request4" style="display: none;">
                            <td id="r4Date" style="border-right: 1px solid black;">
                                <div></div>
                            </td>
                            <td id="r4Title" style="border-right: 1px solid black;">
                                <div></div>
                            </td>
                            <td id="r4Status">
                                <div></div>
                            </td>
                        </tr>
                    </table>
                    <h4 style="text-align: center"><a href="./requests.php" style="text-decoration: none; padding: 0; margin: 0;">All Requests</a></h4>
                </div>
                <div id="personalinfo" class="item-account" style="margin: 15px;border: 1px solid #000;padding: 20px;">
                        <h2>My Account</h2>
                        <table runat="server" id="information" style="padding-top: 20px;">
                            <tr>
                                <td>Contact Name:</td>
                                <td id="name"></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td id="email"></td>
                            </tr>
                            <tr id="compName">
                                <td>Company Name:</td>
                                <td id="companyName"></td>
                            </tr>
                            <tr id="address1">
                                <td>Address:</td>
                                <td id="street1"></td>
                            </tr>
                            <tr id="address2" style="display: none;">
                                <td></td>
                                <td id="street2"></td>
                            </tr>
                            <tr id="address3">
                                <td></td>
                                <td id="county"></td>
                            </tr>
                        </table>
                        <a href="#">Edit Information</a>
                </div>
                <div id="paymenthist" class="item-account" style="margin: 15px;border: 1px solid #000;padding: 20px;">
                    <h2>My Balance</h2>
                    <div style="text-align: center; display: grid; grid-template-columns: 1fr 1fr 1fr; margin-left: 32.5%; margin-right: 32.5%; padding-top: 15px; padding-bottom: 15px;">
                        <h1 style="font-size: 2em; padding: 0; margin: 0;">$</h1>
                        <h1 class="balance1" style="font-size: 2em; color: red; padding: 0; margin: 0;">-3,210.</h1>
                        <h4 class="balance2" style="font-size: 1em; color: red; padding: 5px; margin: 0;">23</h4>
                    </div>
                    <table id="payment" style="padding-top: 10px;">
                        <tr>
                            <td>Last Payment: </td>
                            <td id="lastPay">$500.00</td>
                        </tr>
                        <tr>
                            <td>Last Payment Date: </td>
                            <td id="lastPayDate">07/24/2019</td>
                        </tr>
                        <tr>
                            <td>Minimum Payment: </td>
                            <td id="minPay">$39.00</td>
                        </tr>
                    </table>
                    <h4><a href="#" style="text-decoration: none; padding: 0; margin: 0;">Make A Payment</a></h4>
                    <h4><a href="#" style="text-decoration: none; padding: 0; margin: 0;">Set Up Auto Pay</a></h4>
                </div>
            </div>
        </div>
        <div id="confirmation" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <h1 style="text-align:center;">Success!</h1>
                <p>You have been successfully logged out. Please log back in if you would like to access you account.</p>
                <p></p>
                <h3 id="counter" style="text-align:center;">Closing in 5 seconds...</h3>
                <p></p>
                <a href="Login.aspx" style="color:#f26722;text-decoration:none;"><h3 style="text-align:center;">Sign Back In</h3></a>
            </div>
        </div>
    </body>
    <script>
        var countDownDate = new Date("Sep 1, 2019 15:37:25").getTime();
        var x = setInterval(function () {
            var now = new Date().getTime();
            var distance = countDownDate - now;
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            if (hours < 10)
                hours = "0" + hours;
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            if (minutes < 10)
                minutes = "0" + minutes;
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);
            if (seconds < 10)
                seconds = "0" + seconds;
            document.getElementById("eta").innerHTML = days + " days " + hours + ":" + minutes + ":" + seconds;
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("eta").innerHTML = "- days --:--:--";
            }
        }, 1000);
        $(window).on('load', function () {
            $('.orders.circle').circleProgress({
                startAngle: -Math.PI / 2,
                value: parseFloat(document.getElementById("orderpercent").innerHTML),
                fill: { color: '#f26722' }
            }).on('circle-animation-progress', function (event, progress, stepValue) {
                $(this).find('strong').html(Math.round(stepValue * 100 * progress) + '<i>%</i>');
            });
            $('.progRequests.circle').circleProgress({
                value: parseFloat(document.getElementById("requestpercent").innerHTML),
                startAngle: -Math.PI / 2,
                fill: { color: '#f26722' }
            }).on('circle-animation-progress', function (event, progress, stepValue) {
                $(this).find('strong').html(Math.round(stepValue * 100 * progress) + '<i>%</i>');
            });
        });
        function enableDetails(click_id) {
            if (click_id == "progressDetails")
                changeDisplay("workRepair", click_id, "table-row");
            else if (click_id == "all-hist") {
                changeDisplay("history", click_id, "grid");
                var listId = document.querySelectorAll('.hist-step-whole');
                var i;
                for (i = 0; i < listId.length; i++)
                    listId[i].style['display'] = "none";
            } else if (!isNaN(click_id.substring(click_id.length - 1)))
                changeDisplay(click_id + "-part", click_id, "grid");
            else
                changeDisplay(click_id + "-des", click_id, "block");
        }
        function changeDisplay(id, click_id, display_item) {
            var result = "";
            var line = document.getElementById(click_id).innerHTML;
            if (document.getElementById(id).style['display'] == display_item) {
                result = "none";
                line = line.substring(0, line.length - 1) + "&#9660;";
            } else {
                result = display_item;
                line = line.substring(0, line.length - 1) + "&#9650;";
            }
            document.getElementById(id).style['display'] = result;
            document.getElementById(click_id).innerHTML = line;
        }
        function signOut() {
            document.getElementById("confirmation").style.display = "block";
            var counter = 5;
            var id;
            id = setInterval(function () {
                counter--;
                if (counter < 0) {
                    clearInterval(id);
                    window.location.href = "Logout.aspx";
                } else {
                    $("#counter").text("Closing in " + counter.toString() + " seconds...");
                }
            }, 1000);
        }
        document.getElementsByClassName("close")[0].onclick = function () {
            document.getElementById("confirmation").style.display = "none";
            window.location.href = "Logout.aspx";
        }
    </script>
</html>
