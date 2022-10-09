 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRequest.aspx.cs" Inherits="SampleLogin_C.NewRequest" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        ::-webkit-scrollbar {
          width: 15px;
        }
        ::-webkit-scrollbar-track {
          box-shadow: inset 0 0 5px white;
          border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb {
          background: #f26722;
          border-radius: 10px;
        }
        :root {
            --form-control-color: #f26722;
        }
        .outer {
            background-color: blue;
        }
        #header {
            height: 150px;
            top: 0;
        }
        #footer {
            height: 5%;
            bottom: 0;
        }
        #footer, #header {
            width: 100%;
            position: fixed;
            left: 0;
        }
        .question {
            position: fixed;
            top: 25%;
            font-size: 1.5em;
            row-gap: 10px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            grid-template-rows: 2fr repeat(14, 1fr);
            align-items: center;
            grid-template-columns:  15% 50px 35px 1fr 1fr 15%;
            width: 99.5%;
            height:53.5%;
            overflow-y:auto;
        }
        .quest_mark {
            font-size: 0.5em;
            vertical-align: top;
            margin-left: -6px;
            display: inline-block;
            cursor:help;
        }
        .defHeaderTab {
            width: 100%;
            text-align: center;
        }
        .headerTab {
            text-align: center;
            background-color: white;
            border-top: 5px #f26722 solid;
            border-right: 5px solid #f26722;
            border-left: 5px solid #f26722;
            border-bottom: 5px solid white;
        }
        .defHeaderText {
            display: block;
            padding: 10px 10px 2px 10px;
            color: red;
        }
        .headerText {
            display: block;
            padding: 10px 10px 0 10px;
            color: red;
        }
        .offsetDefHeaderText {
            display: block;
            padding: 10px 55px 2px 55px;
            color: red;
        }
        .offsetHeaderText {
            display: block;
            padding: 10px 55px 0 55px;
            color: red;
        }
        progress {
            width: 97.5%;
            height: 15%;
            border-color: white;
        }
        progress::-webkit-progress-value {
            background: red;
        }
        progress::-webkit-progress-bar {
            background: white;
        }
        #q23layout {
            display:grid;
            grid-template-rows: repeat(4, 1fr);
            grid-template-columns: repeat(3, 1fr);
            text-align:center;
            grid-column:2 / 6;
            align-content:start;
        }
        @media only screen and (max-width: 1674px) {
            .headerTab {
                margin-top: 40px;
            }
            .defHeaderTab {
                margin-top: 46px;
            }
            #q23layout {
                grid-row:2 / 74;
            }
        }
        @media only screen and (min-width: 1675px) {
            .headerTab {
                margin-top: 70px;
            }
            .defHeaderTab {
                margin-top: 76px;
            }
            #q23layout {
                grid-row:2 / 62;
            }
        }
        .divL {
            padding: 0;
            margin: 0;
            border: 1px solid #aaaaaa;
        }
        .divR {
            padding: 0;
            margin: 0;
            border: 1px solid white;
        }
        .divS {
            padding: 0;
            margin: 0;
            border: 1px solid #aaaaaa;
        }
        .divM, .divE {
            padding: 0;
            margin: 0;
            border: 1px solid white;
        }
        .divDrop {
            width: 8em;
            height: 1.5em;
            padding: 5px 5px 5px 0;
        }
        .drag-over {
            border: solid 3px green;
        }
        .hide {
            display: none;
        }
        #allDisplay:hover, #smainDisplay:hover {
            animation-name: scrollUpPullFromLeft;
            animation-duration: 5s;
        }
        #mainfoot:hover #footADisplay {
            animation-duration: 6s;
            animation-name: mobileLayoutSelectA;
        }
        #mainfoot:hover #footBDisplay {
            animation-duration: 6s;
            animation-name: mobileLayoutSelectB;
        }
        #mainfoot:hover #fmainDisplayA {
            animation: mobileLayoutScrollA 6s;
        }
        #mainfoot:hover #fmainDisplayB {
            animation: mobileLayoutScrollB 6s;
        }
        #hmainDisplay:hover {
            animation: scrollUp 6s;
        }
        @keyframes scrollUpPullFromLeft {
            0% {
                margin: 0 0 0 -21px;
            }
            30% {
                margin: -80px 0 0 -21px;
            }
            60% {
                margin: 0 0 0 -21px;
            }
            65% {
                margin: 0;
            }
            90% {
                margin: 0;
            }
            95% {
                margin: 0 0 0 -21px;
            }
        }
        @keyframes scrollUp {
            0% {
                margin: 0;
            }
            50% {
                margin:-80px 0 0 0;
            }
            100% {
                margin: 0;
            }
        }
        @keyframes mobileLayoutScrollA {
            0% {
                visibility: visible;
                height: auto;
                margin: 0;
            }
            21.25% {
                margin: -60px 0 0 0;
            }
            42.5% {
                margin: 0;
            }
            49.49% {
                visibility: visible;
                height: auto;
            }
            49.5% {
                visibility: collapse;
                height: 0;
            }
            99% {
                visibility: collapse;
                height: 0;
                margin: 0;
            }
            99.01% {
                visibility: visible;
                height: auto;
            }
            100% {
                visibility: visible;
                height: auto;
                margin: 0;
            }
        }
        @keyframes mobileLayoutScrollB {
            0% {
                visibility: collapse;
                height: 0;
                margin: 0;
            }
            49.5% {
                visibility: visible;
                height: auto;
                margin: 0;
            }
            56.5% {
                margin: 0;
            }
            77.75% {
                margin:-60px 0 0 0;
            }
            98.99% {
                visibility: visible;
                height: auto;
            }
            99% {
                visibility: collapse;
                height: 0;
                margin: 0;
            }
        }
        @keyframes mobileLayoutSelectA {
            0% {
                border-top: 1px solid white;
                border-left: 1px solid grey;
                border-bottom: 1px solid grey;
                border-right: 1px solid grey;
            }
            49.49%{
                border-top: 1px solid white;
                border-left: 1px solid grey;
                border-bottom: 1px solid grey;
                border-right: 1px solid grey;
            }
            49.5% {
                border-top: 1px solid black;
                border-left: 1px solid white;
                border-bottom: 1px solid white;
                border-right: 1px solid white;
            }
            98.99% {
                border-top: 1px solid black;
                border-left: 1px solid white;
                border-bottom: 1px solid white;
                border-right: 1px solid white;
            }
            99% {
                border-top: 1px solid white;
                border-left: 1px solid grey;
                border-bottom: 1px solid grey;
                border-right: 1px solid grey;
            }
        }
        @keyframes mobileLayoutSelectB {
            0% {
                border-top: 1px solid black;
                border-left: 1px solid white;
                border-bottom: 1px solid white;
                border-right: 1px solid white;
            }
            49.49% {
                border-top: 1px solid black;
                border-left: 1px solid white;
                border-bottom: 1px solid white;
                border-right: 1px solid white;
            }
            49.5% {
                border-top: 1px solid white;
                border-left: 1px solid grey;
                border-bottom: 1px solid grey;
                border-right: 1px solid grey;
            }
            98.99% {
                border-top: 1px solid white;
                border-left: 1px solid grey;
                border-bottom: 1px solid grey;
                border-right: 1px solid grey;
            }
            99% {
                border-top: 1px solid black;
                border-left: 1px solid white;
                border-bottom: 1px solid white;
                border-right: 1px solid white;
            }
        }
        #closeModal:hover {
            cursor: pointer;
        }
        /** The Menu button for the Pop-up Window */
        .menu {
            display: inline-block;
            cursor: pointer;
        }
        .m1, .m2, .m3 {
             width: 35px;
            height: 5px;
            background-color: #333;
            margin: 6px 0;
            transition: 0.4s;
        }
        .change .m1 {
          -webkit-transform: rotate(-45deg) translate(-9px, 6px);
          transform: rotate(-45deg) translate(-9px, 6px);
        }
        .change .m2 {
            opacity: 0;
        }
        .change .m3 {
          -webkit-transform: rotate(45deg) translate(-8px, -8px);
          transform: rotate(45deg) translate(-8px, -8px);
        }
        body {
            font-family: "Lato", sans-serif;
            transition: background-color .5s;
        }
        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        .sidenav a:hover {
            color: #f1f1f1;
        }
        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        .top_hole, .right_hole, .bottom_hole, .left_hole, .top_knob, .right_knob, .bottom_knob, .left_knob {
            border:1px solid #000;
            height:20px;
            width:20px;
            border-radius:50%;
            position:relative;
        }
        .top_hole, .right_hole, .bottom_hole, .left_hole {
            background-color: lightgrey;
            position:relative;
            z-index: 8;
        }
        .top_knob, .right_knob, .bottom_knob, .left_knob {
            background-color: #fff;
            position:relative;
            z-index: 10;
        }
        .top_hole {
            border-top:1px solid transparent;
        }
        .top_knob {
            border-bottom:1px solid #fff;
        }
        .bottom_knob {
            border-top:1px solid #fff;
        }
        .bottom_hole {
            border-bottom:1px solid transparent;
        }
        .left_hole {
            border-left:1px solid transparent;
        }
        .right_knob {
            border-left:1px solid #fff;
        }
        .right_hole {
            border-right:1px solid transparent;
        }
        .left_knob {
            border-right:1px solid #fff;
        }
        .puzzle {
            height:78.9px;
            width:78.9px;
            border:1px solid #000;
            background-color:#fff;
        }
        .missing_puzzle {
            height:78.9px;
            width:78.9px;
            background-color: lightgrey;
            border:1px solid #000;
        }
        .partial_puzzle_L, .partial_puzzle_R {
            height: 78.9px;
            width: 48.9px;
        }
        .partial_puzzle_L, .partial_puzzle_R, .partial_puzzle_B {
            border-top: 1px solid #000;
        }
        .partial_puzzle_T {
            border-top: 1px solid #fff;
            margin-top:30px;
        }
        .partial_puzzle_L, .partial_puzzle_R, .partial_puzzle_T {
            border-bottom:1px solid #000;
        }
        .partial_puzzle_B {
            border-bottom: 1px solid #fff;
        }
        .partial_puzzle_B, .partial_puzzle_T, .partial_puzzle_L {
            border-right: 1px solid #000;
        }
        .partial_puzzle_R {
            border-right: 1px solid #fff;
        }
        .partial_puzzle_B, .partial_puzzle_T, .partial_puzzle_R {
            border-left:1px solid #000;
        }
        .partial_puzzle_L {
            border-left: 1px solid #fff;
        }
        .partial_puzzle_B, .partial_puzzle_T {
            height: 48.9px;
            width: 78.9px;
        }
        .partial_puzzle_BLC, .partial_puzzle_BRC, .partial_puzzle_TLC, .partial_puzzle_TRC {
            height:48.9px;
            width:48.9px;
        }
        .partial_puzzle_BLC, .partial_puzzle_BRC {
            border-top: 1px solid #000;
            border-bottom: 1px solid #fff;
        }
        .partial_puzzle_TLC, .partial_puzzle_TRC {
            border-top: 1px solid #fff;
            border-bottom: 1px solid #000;
            margin-top:30px;
        }
        .partial_puzzle_BLC, .partial_puzzle_TLC {
            border-right: 1px solid #000;
            border-left: 1px solid #fff;
        }
        .partial_puzzle_TRC, .partial_puzzle_BRC {
            border-right: 1px solid #fff;
            border-left: 1px solid #000;
        }
        input[type="checkbox"], input[type="radio"] {
            -webkit-appearance: none;
            /**appearance: none;*/
            margin: 0;
            font: inherit;
            color: currentColor;
            border: 2px solid blue;
            /**transform: translateY(-0.075em);*/
            display:grid;
            place-content: center;
        }
        input[type="checkbox"] {
            width: 0.75em;
            height: 0.75em;
            border-radius: 0.15em;
        }
        input[type="checkbox"]::before {
            /**clip-path: polygon(50% 100%, 61.8% 61.8%, 100% 61.8%, 69.1% 38.2%, 80.90% 0%, 50% 23.61%, 19.1% 0%,30.9% 38.2%,0% 61.8%, 38.2% 61.8%, 50% 100%);*/
            clip-path: polygon(50% 0%, 61.8% 38.2%, 100% 38.2%, 69.1% 61.8%, 80.9% 100%, 50% 76.39%, 19.1% 100%, 30.9% 61.8%, 0% 38.2%, 38.2% 38.2%, 50% 0%);
            width:0.5em;
            height:0.5em;
        }
        input[type="checkbox"]::before, input[type="radio"]::before {
            content:"";
            transform:scale(0);
            transition:75ms transform ease-in-out;
            box-shadow:inset 1em 1em var(--form-control-color);
        }
        input[type="radio"]::before {
            width:0.35em;
            height:0.35em;
        }
        input[type="checkbox"]:checked::before {
            transform: scale(1);
        }
        input[type="radio"] {
            width: 0.75em;
            height: 0.75em;
            border-radius: 50%;
        }
        input[type="radio"]:checked::before {
            transform: scale(1);
            border-radius: 50%;
        }
        .myMsgBox {
            opacity: 0;
            display:grid;
            position:absolute;
            height:100px;
            width:475px;
            top:20px;
            left:40%;
            background-color:white;
            border-radius:25px;
            border:2px solid red;
            grid-template-rows:1fr;
            grid-template-columns:1fr;
        }
        .msgBoxAnimation {
            animation:4s flyInMsg 1;
        }
        @keyframes flyInMsg {
            0% {
                top:10px;
                opacity: 0;
            }
            12.5% {
                top:75px;
                opacity: 1;
            }
            87.5% {
                top:75px;
                opacity: 1;
            }
            100%{
                top:10px;
                opacity: 0;
            }
        }
        table th, table td {
            padding: 0;
            border: 1px solid black;
        }
        #saveToRequest:disabled, #prevButton:disabled, #saveBtn:disabled, #saveExitBtn:disabled, #nextBtn:disabled {
            background-color:rgba(242, 103, 34, 0.1);
            color: lightgrey;
            border:1px solid rgba(242, 103, 34, 0.25);
        }
        #saveToRequest:enabled, #prevButton:enabled, #saveBtn:enabled, #saveExitBtn:enabled, #nextBtn:enabled {
            background-color:#f26722;
            color: white;
            border:1px solid #f26722;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div id="header" class="outer" style="font-size:1.5em;display:grid;grid-template-columns: 10% repeat(5, 1fr) 50px 10%;vertical-align:bottom;">
            <div id="header1" class="headerTab" style="grid-column:2 / 3;">
                <label id="headerText1" class="headerText">Company Information</label>
                <progress id="headerProg1" min="0" max="8" value="0"></progress>
            </div>
            <div id="header2" class="defHeaderTab" style="grid-column:3 / 4;">
                <label id="headerText2" class="defHeaderText">Applications Structure</label>
                <progress id="headerProg2" min="0" max="10" value="0" style="display:none;"></progress>
            </div>
            <div id="header3" class="defHeaderTab" style="grid-column:4 / 5;">
                <label id="headerText3" class="defHeaderText">Application Specifics</label>
                <progress id="headerProg3" min="0" max="8" value="0" style="display:none;"></progress>
            </div>
            <div id="header4" class="defHeaderTab" style="grid-column:5 / 6;">
                <label id="headerText4" class="defHeaderText">Application Functionality</label>
                <progress id="headerProg4" min="0" max="9" value="0" style="display:none;"></progress>
            </div>
            <div id="header5" class="defHeaderTab" style="grid-column:6 / 7;">
                <label id="headerText5" class="defHeaderText">Personal Information</label>
                <progress id="headerProg5" min="0" max="4" value="0" style="display:none;"></progress>
            </div>
            <div id="outlineAccPic" onmouseover="dropdownAcc(this.id)" onmouseout="dropdownAcc('')" style="height:35px;width:35px;grid-column:7 / 8;align-self:end;padding:10px;display:grid;grid-template-columns:1fr;grid-template-rows:1fr;">
                <label id="ddArrow" onmouseover="dropdownAcc(this.id)" style="color:#f26722;align-self:center;justify-self:center;grid-row:1 / 2;grid-column:1 / 2;"></label>
            </div>
        </div>
        <div id="myAcc" onmouseover="dropdownAcc(this.id)" onmouseout="dropdownAcc('')" style="position:absolute;width:275px;display:none;grid-template-rows:20px repeat(4, 1fr) 20px;grid-template-columns:20px 48px 1fr 20px;background-color:#f26722;color:white;z-index:10;">
            <div onmouseover="dropdownAcc(this.id)" id="accPic" style="grid-row:2 / 4;grid-column:2 / 3;height:40px;width:40px;border-radius:50%;overflow:hidden;align-self:center;border:1px solid black;">
                <div onmouseover="dropdownAcc(event)" id="accHead" style="position:relative;height:14px;width:14px;border-radius:50%;top:8px;left:13.5px;"></div>
                <div onmouseover="dropdownAcc(event)" id="accBody" style="position:relative;height:40px;width:40px;border-radius:50%;top:10px;left:1px;"></div>
            </div>
            <div id="userDD" onmouseover="dropdownAcc(this.id)" style="display:none;grid-row:2 / 6;grid-column:3 / 4;grid-template-rows:1fr 1fr 1fr 1fr;grid-template-columns:1fr 2fr;">
                <label onmouseover="dropdownAcc(this.id)" id="siUserLbl" type="text" style="grid-row:1 / 2;grid-column:1 / 2;background-color:inherit;color:white;">User:</label>
                <label onmouseover="dropdownAcc(this.id)" id="signInUser" type="text" style="grid-row:1 / 2;grid-column:2 / 3;background-color:inherit;color:white;"></label>
                <label onmouseover="dropdownAcc(this.id)" id="siUIDLbl" type="text" style="background-color:inherit;color:white;grid-row:2 / 3;grid-column:1 / 2;">UID:</label>
                <label onmouseover="dropdownAcc(this.id)" id="signInUID" type="text" style="background-color:inherit;color:white;grid-row:2 / 3;grid-column:2 / 3;"></label>
                <label onmouseover="dropdownAcc(this.id)" id="siTicketLbl" type="text" style="grid-row:3 / 4;grid-column:1 / 2;background-color:inherit;color:white;">Ticket:</label>
                <label onmouseover="dropdownAcc(this.id)" id="signInTicket" type="text" style="grid-row:3 / 4;grid-column:2 / 3;background-color:inherit;color:white;"></label>
                <label onmouseover="dropdownAcc(this.id)" id="siKeyLbl" type="text" style="background-color:inherit;color:white;grid-row:4 / 5;grid-column:1 / 2;">Key:</label>
                <label onmouseover="dropdownAcc(this.id)" id="signInKey" type="text" style="background-color:inherit;color:white;grid-row:4 / 5;grid-column:2 / 3;"></label>
            </div>
            <hr id="signInBar" onmouseover="dropdownAcc(this.id)" style="grid-row:4 / 5;grid-column:2 / 4;background-color:white;width:100%;height:1px;padding:0;margin:auto 0;" />
            <!--<input onmouseover="dropdownAcc(this.id)" id="signInAcc" type="button" value="Log In" style="display:none;text-align:start;grid-row:5 / 6;grid-column:2 / 4;background-color:#f26722;border:1px solid transparent;color:white;" />
            <input onmouseover="dropdownAcc(this.id)" id="signInStat" type="button" onclick="saveButton()" value="Log In" style="display:none;text-align:start;grid-row:6 / 7;grid-column:2 / 4;background-color:#f26722;border:1px solid transparent;color:white;" />-->
            <input onmouseover="dropdownAcc(this.id)" id="signInLoad" type="button" value="Load Request" style="cursor:pointer;display:none;text-align:start;grid-row:5 / 6;grid-column:2 / 4;background-color:inherit;border:1px solid #f26722;color:white;padding:0;margin:0;" />
            <input onmouseover="dropdownAcc(this.id)" id="signInAcc" type="button" value="Manage Account" style="cursor:pointer;display:none;text-align:start;grid-row:6 / 7;grid-column:2 / 4;background-color:inherit;border:1px solid #f26722;color:white;padding:0;margin:0;" />
            <input onmouseover="dropdownAcc(this.id)" id="signInStat" type="button" value="Sign In" onclick="saveButton(this.id)" style="cursor:pointer;text-align:start;grid-row:5 / 6;grid-column:2 / 4;background-color:inherit;border:1px solid #f26722;color:white;padding:0;margin:0;" />
        </div>
        <div id="part1">
            <div id="part1_intro">

            </div>
            <div id="question1" class="question" style="display:grid;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">What is this application going to be used for:</label>
                <input type="radio" class="content" value="personal" name="q1" id="q1per" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label for="q1per" title="If you aren't making a direct profit from selling a service and you are solely attaching your name to it, then this is the option. Example: A personal portfolio webpage would be personal." style="display:inline-block;">Personal</label>
                    <div class="quest_mark">?</div>
                </div>
                <input type="radio" value="business" name="q1" id="q1bus" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label for="q1bus" title="If you are selling a service and plan to earn money, then it's a business application. Example: A mobile video game would be business." style="display:inline-block;">Business</label>
                    <div class="quest_mark">?</div>
                </div>
            </div>
            <div id="question2" class="question" style="display:none;"></div>
            <div id="question3" class="question" style="display:none;">
                <label id="q3text" style="grid-row:1 / 2;grid-column:2 / 6;">Who is your intended audience?</label>
                <input type="radio" value="employees" name="q3" id="q3emp_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q3emp_tA" for="q3emp_c" title="" style="display:inline-block;">Employees</label>
                    <div id="q3emp_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="customers" name="q3" id="q3cus_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q3cus_tA" for="q3cus_c" title="" style="display:inline-block;">Customers</label>
                    <div id="q3cus_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="both" name="q3" id="q3both_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q3both_tA" for="q3both_c" title="" style="display:inline-block;">Both</label>
                    <div id="q3both_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="neither" name="q3" id="q3nei_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q3nei_tA" for="q3nei_c" title="" style="display:inline-block;">Neither</label>
                    <div id="q3nei_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question4" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">How many (at the maximum) employees will be accessing this application on a given day?</label>
                <input type="radio" value="one" name="q4" id="q4one_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q4one_tA" for="q4one_c" title="" style="display:inline-block;">1 - 49</label>
                    <div id="q4one_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="fifty" name="q4" id="q4fif_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q4fif_tA" for="q3fif_c" title="" style="display:inline-block;">50 - 99</label>
                    <div id="q4fif_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="hundred" name="q4" id="q4hun_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q4hun_tA" for="q4hun_c" title="" style="display:inline-block;">100 - 499</label>
                    <div id="q4hun_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="five_hundred" name="q4" id="q45hun_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q45hun_tA" for="q45hun_c" title="" style="display:inline-block;">500 - 999</label>
                    <div id="q45hun_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="thousands" name="q4" id="q4thou_c" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div style="grid-row:6 / 7;grid-column:4 / 6;display:inline-block;">
                    <label id="q4thou_tA" for="q4thou_c" title="" style="display:inline-block;">1,000 - 4,999</label>
                    <div id="q4thou_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="five_thousand" name="q4" id="q45thou_c" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div style="grid-row:7 / 8;grid-column:4 / 6;display:inline-block;">
                    <label id="q45thou_tA" for="q45thou_c" title="" style="display:inline-block;">5,000 - 9,999</label>
                    <div id="q45thou_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="ten_thousand" name="q4" id="q410thou_c" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div style="grid-row:8 / 9;grid-column:4 / 6;display:inline-block;">
                    <label id="q410thou_tA" for="q410thou_c" title="" style="display:inline-block;">10,000 - 49,999</label>
                    <div id="q410thou_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="fifty_thousand" name="q4" id="q450thou_c" style="grid-row:9 / 10;grid-column:3 / 4;" />
                <div style="grid-row:9 / 10;grid-column:4 / 6;display:inline-block;">
                    <label id="q450thou_tA" for="q450thou_c" title="" style="display:inline-block;">50,000 - 99,999</label>
                    <div id="q450thou_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="hundred_thousand" name="q4" id="q4hunThou_c" style="grid-row:10 / 11;grid-column:3 / 4;" />
                <div style="grid-row:10 / 11;grid-column:4 / 6;display:inline-block;">
                    <label id="q4hunThou_tA" for="q4hunThou_c" title="" style="display:inline-block;">100,000+</label>
                    <div id="q4hunThou_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question5" class="question" style="display:none;">
                <label id="q5text" style="grid-row:1 / 2;grid-column:2 / 6;">Will the employees have personal accounts to access this applications?</label>
                <input type="radio" value="yes_accounts" name="q5" id="q5Yes_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q5Yes_tA" for="q5Yes_c" title="" style="display:inline-block;">Yes</label>
                    <div id="q5Yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="maybe_accounts" name="q5" id="q5Maybe_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q5Maybe_tA" for="q5Maybe_c" title="" style="display:inline-block;">Maybe</label>
                    <div id="q5Maybe_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="no_accounts" name="q5" id="q5No_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q5No_tA" for="q5No_c" title="" style="display:inline-block;">No</label>
                    <div id="q5No_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="unknown_accounts" name="q5" id="q5idk_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q5idk_tA" for="q5idk_c" title="" style="display:inline-block;">Unknown</label>
                    <div id="q5idk_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question6" class="question" style="display:none;"></div>
            <div id="question7" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Are you updating a previous application?</label>
                <input type="radio" value="yes_updating" name="q7" id="q7Yes_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q7Yes_tA" for="q7Yes_c" title="" style="display:inline-block;">Yes</label>
                    <div id="q7Yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="no_updating" name="q7" id="q7No_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q7No_tA" for="q7No_c" title="" style="display:inline-block;">No</label>
                    <div id="q7No_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question8" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Would you be willing to provide us full access to the previous application (or at least temporarily)?</label>
                <input type="radio" value="yes_fullacctoprev" name="q8" id="q8Yes_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q8Yes_tA" for="q8Yes_c" title="" style="display:inline-block;">Yes</label>
                    <div id="q8Yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" value="no_fullacctoprev" name="q8" id="q8No_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q8No_tA" for="q8No_c" title="" style="display:inline-block;">No</label>
                    <div id="q8No_tB" class="quest_mark">?</div>
                </div>
            </div>
        </div>
        <div id="part2"> 
            <div id="part2_intro" style="display:none;">
                <label>Type of Application</label>
            </div>
            <div id="question9" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Type of Application (Mark all that apply):</label>
                <input type="checkbox" value="website" name="q9" id="q9w_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q9w_tA" for="q9w_c" title="" style="display:inline-block;">Website</label>
                    <div id="q9w_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="driver" name="q9" id="q9drv_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q9drv_tA" for="q9drv_c" title="" style="display:inline-block;">Driver</label>
                    <div id="q9drv_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="desktop_application" name="q9" id="q9da_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q9da_tA" for="q9da_c" title="" style="display:inline-block;">Desktop Application</label>
                    <div id="q9da_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="mobile_application" name="q9" id="q9ma_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q9ma_tA" for="q9ma_c" title="" style="display:inline-block;">Mobile Application</label>
                    <div id="q9ma_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="operating_system" name="q9" id="q9os_c" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div style="grid-row:6 / 7;grid-column:4 / 6;display:inline-block;">
                    <label id="q9os_tA" for="q9os_c" title="" style="display:inline-block;">Operating System</label>
                    <div id="q9os_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="game_console" name="q9" id="q9gm_c" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div style="grid-row:7 / 8;grid-column:4 / 6;display:inline-block;">
                    <label id="q9gm_tA" for="q9gm_c" title="" style="display:inline-block;">Game Console Application</label>
                    <div id="q9gm_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="console_executed" name="q9" id="q9ce_c" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div style="grid-row:8 / 9;grid-column:4 / 6;display:inline-block;">
                    <label id="q9ce_tA" for="q9ce_c" title="" style="display:inline-block;" >Console Executed</label>
                    <div id="q9ce_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="server_application" name="q9" id="q9sa_c" style="grid-row:9 / 10;grid-column:3 / 4;" />
                <div style="grid-row:9 / 10;grid-column:4 / 6;display:inline-block;">
                    <label id="q9sa_tA" for="q9sa_c" title="" style="display:inline-block;">Server Application</label>
                    <div id="q9sa_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="other" name="q9" id="q9o_c" onclick="enableTextBox(this.id)" style="grid-row:10 / 11;grid-column:3 / 4;" />
                <div style="grid-row:10 / 11;grid-column:4 / 6;">
                    <label id="q9o_tA" for="q9o_c" title="" style="display:inline-block;user-select:none;">Other...</label>
                    <input id="q9o_tB" type="text" style="width:250px;font-size:inherit;font-family:inherit;display:inline-block;" disabled="disabled" />
                </div>
            </div>
            <div id="question10" class="question" style="display:none;">
                <label id="q10" name="q10" style="grid-row:1 / 2;grid-column:2 / 6;">What operating systems will it be run on? (Mark all that apply.)</label>
                <input type="checkbox" text="windows" name="q10" id="q10Win_c" style="grid-column:3 / 4;" />
                <div id="q10Win_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10Win_tA" for="q10Win_c">Windows</label>
                    <div id="q10Win_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="none" name="q10" id="q10WinPhone_c" style="grid-column:3 / 4;" />
                <div id="q10WinPhone_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10WinPhone_tA" for="q10WinPhone_c">Windows Phone</label>
                    <div id="q10WinPhone_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="macos" name="q10" id="q10Mac_c" style="grid-column:3 / 4;" />
                <div id="q10Mac_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10Mac_tA" for="q10Mac_c">MacOS</label>
                    <div id="q10Mac_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="ios" name="q10" id="q10ios_c" style="grid-column:3 / 4;" />
                <div id="q10ios_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10ios_tA" for="q10ios_c">iOS</label>
                    <div id="q10ios_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="linux" name="q10" id="q10Lin_c" style="grid-column:3 / 4;" />
                <div id="q10Lin_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10Lin_tA" for="q10Lin_c">Linux-based</label>
                    <div id="q10Lin_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="android" name="q10" id="q10and_c" style="grid-column:3 / 4;" />
                <div id="q10and_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10and_tA" for="q10and_c">Android</label>
                    <div id="q10and_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="chromeos" name="q10" id="q10Chr_c" style="grid-column:3 / 4;" />
                <div id="q10Chr_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10Chr_tA" for="q10Chr_c">Chrome OS</label>
                    <div id="q10Chr_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="unknown" name="q10" id="q10idk_c" style="grid-column:3 / 4;" />
                <div id="q10idk_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10idk_tA" for="q10idk_c">Unknown</label>
                    <div id="q10idk_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="none" name="q10" id="q10none_c" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div id="q10none_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10none_tA" for="q10none_c">None</label>
                    <div id="q10none_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="other" name="q10" id="q10o_c" onclick="enableTextBox(this.id)" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div id="q10o_t" title="" style="grid-column:4 / 6;display:inline-block;">
                    <label id="q10o_tA" for="q10o_c" style="user-select:none;">Other...</label>
                    <input id="q10o_tB" type="text" style="width:250px;font-size:inherit;font-family:inherit;" disabled="disabled" />
                </div>
            </div>
            <div id="question11" class="question" style="display:none;">
                <label id="q11" style="grid-row:1 / 2;grid-column:2 / 6;">How will the website be accessed?</label>
                <input type="checkbox" text="intranet" name="q11" id="q11intra_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q11intra_t" style="grid-column:4 / 6;grid-row:2 / 3;display:inline-block;">
                    <label id="q11intra_tA" for="q11intra_c" title="" style="display:inline-block;">Intranet</label>
                    <div id="q11intra_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="intranet" name="q11" id="q11inter_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q11inter_t" style="grid-column:4 / 6;grid-row:3 / 4;display:inline-block;">
                    <label id="q11inter_tA" for="q11inter_c" title="" style="display:inline-block;">Internet</label>
                    <div id="q11inter_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="intranet" name="q11" id="q11proto_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div id="q11proto_t" style="grid-column:4 / 6;grid-row:4 / 5;display:inline-block;">
                    <label id="q11proto_tA" for="q11proto_c" title="" style="display:inline-block;">Special Protocol</label>
                    <div id="q11proto_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" text="intranet" name="q11" id="q11none_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div id="q11none_t" style="grid-column:4 / 6;grid-row:5 / 6;display:inline-block;">
                    <label id="q11none_tA" for="q11none_c" title="" style="display:inline-block;">None</label>
                    <div id="q11none_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" text="dont_know" name="q11" id="q11idk_c" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div id="q11idk_t" style="grid-column:4 / 6;grid-row:6 / 7;display:inline-block;">
                    <label id="q11idk_tA" for="q11idk_c" title="" style="display:inline-block;">Don't Know</label>
                    <div id="q11idk_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question12" class="question" style="display:none;">
                <label id="q12_t" style="grid-row:1 / 2;grid-column:2 / 6;">Since you said 'unknown' to the previous question, please provide the name of the operating system to the best of your ability.</label>
                <input id="q12_b" type="text" style="width:80%;font-size:inherit;font-family:inherit;grid-row:2 / 3;grid-column:2 / 6;margin-left:10%" />
            </div>
            <div id="question13" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Are there any in-app purchases that could violate Google's Play Store policy?</label>
                <input type="radio" name="q13" id="q13yes_c" text="yes_storeviolate" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q13yes_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q13yes_tA" for="q13yes_c">Yes</label>
                    <div id="q13yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q13" id="q13no_c" text="no_storeviolate" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q13no_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q13no_tA" for="q13no_c">No</label>
                    <div id="q13no_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question14" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Are there any in-app purchases that could violate Apple's App Store policy?</label>
                <input type="radio" name="q14" id="q14yes_c" text="yes_storeviolate" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q14yes_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q14yes_tA" for="q14yes_c">Yes</label>
                    <div id="q14yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q14" id="q14no_c" text="no_storeviolate" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q14no_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q14no_tA" for="q14no_c">No</label>
                    <div id="q14no_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question15" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Please explain what kind of purchases and explain the reasoning for not using the store for the purchase.</label>
                <textarea id="q15" style="grid-row:2 / 9;grid-column:2 / 6;height:350px"></textarea>
            </div>
            <div id="question16" class="question" style="display:none;"></div>
            <div id="question17" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Will this application violate any privacy or data breach laws?</label>
                <input type="radio" name="q17" id="q17yes_c" text="yes_privacy" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q17yes_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q17yes_tA" for="q17yes_c">Yes</label>
                    <div id="q17yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q17" id="q17no_c" text="no_privacy" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q17no_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q17no_tA" for="q17no_c">No</label>
                    <div id="q17no_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q17" id="q17pot_c" text="potential_privacy" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div id="q17pot_t" style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q17pot_tA" for="q17pot_c">Potentially</label>
                    <div id="q17pot_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question18" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Will this application violate any copyright infringements or the Federal Acquisition Regulations, Part 27?</label>
                <input type="radio" name="q18" id="q18yes_c" text="yes_copyright" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q18yes_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q18yes_tA" for="q18yes_c">Yes</label>
                    <div id="q18yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q18" id="q18no_c" text="no_copyright" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q18no_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q18no_tA" for="q18no_c">No</label>
                    <div id="q18no_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q18" id="q18pot_c" text="potential_copyright" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div id="q18pot_t" style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q18pot_tA" for="q18pot_c">Potentially</label>
                    <div id="q18pot_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question19" class="question" style="display:none;"></div>
        </div>
        <div id="part3">
            <div id="part3_intro">

            </div>
            <div id="question20" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">What type of devices are you targeting? (Mark all that apply.)</label>
                <input type="checkbox" name="q20" id="q20desk_c" text="desktop_device" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q20desk_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q20desk_tA" for="q20desk_c">Desktop</label>
                    <div id="q20desk_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20laptop_c" text="laptop_device" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q20laptop_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q20laptop_tA" for="q20laptop_c">Laptop</label>
                    <div id="q20laptop_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20tablet_c" text="tablet_device" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div id="q20tablet_t" style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q20tablet_tA" for="q20tablet_c">Tablet</label>
                    <div id="q20tablet_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20phone_c" text="phone_device" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div id="q20phone_t" style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q20phoone_tA" for="q20phone_c">iPhone/Android Phone</label>
                    <div id="q20phone_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20gaming_c" text="gaming_device" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div id="q20gaming_t" style="grid-row:6 / 7;grid-column:4 / 6;display:inline-block;">
                    <label id="q20gaming_tA" for="q20gaming_c">Gaming Console</label>
                    <div id="q20gaming_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20uiequip_c" text="uiequip_device" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div id="q20uiequip_t" style="grid-row:7 / 8;grid-column:4 / 6;display:inline-block;">
                    <label id="q20uiequip_tA" for="q20uiequip_c">User Interfacing Equipment</label>
                    <div id="q20uiequip_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20nonui_c" text="nonui_device" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div id="q20nonui_t" style="grid-row:8 / 9;grid-column:4 / 6;display:inline-block;">
                    <label id="q20nonui_tA" for="q20nonui_c">Non-User Interfacing Equipment</label>
                    <div id="q20nonui_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" name="q20" id="q20o_c" text="other_device" onclick="enableTextBox(this.id)" style="grid-row:9 / 10;grid-column:3 / 4;" />
                <div id="q20o_t" style="grid-row:9 / 10;grid-column:4 / 6;display:inline-block;">
                    <label id="q20o_tA" for="q20o_c">Other...</label>
                    <input id="q20o_tB" type="text" style="width:250px;font-size:inherit;font-family:inherit;" disabled="disabled" />
                </div>
            </div>
            <div id="question21" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Drag and drop these attributes to the corresponding rank for your program based upon its importance to you (“1” being the most important to “6” being the least important):</label>
                <div id="q21one" style="grid-row:2 / 3; grid-column:2 / 5;display:inline-block;">
                    <label id="rank1" class="rank" style="display:inline-block;">1. </label>
                    <div id="divL1" class="divDrop divL" ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR1" style="grid-row:2 / 3; grid-column:5 / 6;">
                    <label id="drag1" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)" width="336" height="69">Appearance</label>
                </div>
                <div id="q21two" style="grid-row:3 / 4; grid-column:2 / 5;display:inline-block;">
                    <label id="rank2" style="display:inline-block;">2. </label>
                    <div id="divL2" class="divDrop divL" ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR2" style="grid-row:3 / 4; grid-column:5 / 6;">
                    <label id="drag2" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)" width="336" height="69">Responsive</label>
                </div>
                <div id="q21three" style="grid-row:4 / 5; grid-column:2 / 5;display:inline-block;">
                    <label id="rank3" style="display:inline-block;">3. </label>
                    <div id="divL3" class="divDrop divL" ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR3" style="grid-row:4 / 5; grid-column:5 / 6;">
                    <label id="drag3" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)"  width="336" height="69">Security</label>
                </div>
                <div id="q21four" style="grid-row:5 / 6; grid-column:2 / 5;display:inline-block;">
                    <label id="rank4" style="display:inline-block;">4. </label>
                    <div id="divL4" class="divDrop divL"  ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR4" style="grid-row:5 / 6; grid-column:5 / 6;">
                    <label id="drag4" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)" width="336" height="69">Cross-Platform</label>
                </div>
                <div id="q21five" style="grid-row:6 / 7; grid-column:2 / 5;display:inline-block;">
                    <label id="rank5" style="display:inline-block;">5. </label>
                    <div id="divL5" class="divDrop divL"  ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR5" style="grid-row:6 / 7; grid-column:5 / 6;">
                    <label id="drag5" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)" width="336" height="69">Resourcefulness</label>
                </div>
                <div id="q21six" style="grid-row:7 / 8; grid-column:2 / 5;display:inline-block;">
                    <label id="rank6" style="display:inline-block;">6. </label>
                    <div id="divL6" class="divDrop divL" ondrop="dropTwo(event)" ondragover="dragOverTwo(event)" ondragleave="dragLeaveTwo(event)" ondragenter="dragEnterTwo(event)" style="display:inline-block;"><label style="visibility:hidden;">Y</label></div>
                </div>
                <div id="divR6" style="grid-row:7 / 8; grid-column:5 / 6;">
                    <label id="drag6" draggable="true" ondragstart="dragStartTwo(event)" ondragend="dragEndTwo(event)" width="336" height="69">User-Friendly</label>
                </div>
            </div>
            <div id="question22" class="question" style="display:none;"></div>
            <div id="question23" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Are there any layouts that you would prefer? (Mark all that apply.)</label>
                <div id="q23layout">
                    <div id="q23all_t" style="grid-row:1 / 2;grid-column:1 / 2;">
                        <div id="all" style="width:80px;height:95px;border:2px solid black;margin:10px auto;overflow:hidden;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="allDisplay" style="margin:0 0 0 -21px;">
                                <div style="height:20px;width:81px;border-bottom:1px solid black;margin:0 0 0 20px;"></div>
                                <div style="height:1px;width:50px;border-bottom:2px solid black;margin:-14px 0 5px 35px;"></div>
                                <div style="width:20px;height:165px;border-right:1px solid black;margin:-20px 0 0 0;"></div>
                                <div style="height:1px;width:35px;border-bottom:1px solid grey;margin:-130px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:45px;border-bottom:1px solid grey;margin:5px 0 5px 45px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:45px;border-bottom:1px solid grey;margin:5px 0 5px 45px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="border-top:1px solid black;width:101px;height:13px;margin:0;"></div>
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23all_c" text="hfsm_layout" style="display:inline-block" />
                        <label id="q23all_tA" for="q23all_c">Header / Footer / Side(s) / Main</label>
                    </div>
                    <div id="q23sidemain_t" style="grid-row:1 / 2;grid-column:2 / 3;display:inline-block;">
                        <div id="sidemain" style="width:80px;height:95px;border:2px solid black;margin:10px auto;overflow:hidden;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="smainDisplay" style="margin:0 0 0 -21px;">
                                <div style="height:20px;width:81px;border-bottom:1px solid grey;margin:0 0 0 20px;"></div>
                                <div style="height:1px;width:50px;border-bottom:2px solid black;margin:-14px 0 5px 35px;"></div>
                                <div style="width:20px;height:155px;border-right:1px solid grey;margin:-20px 0 0 0;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:-120px 0 5px 30px;"></div>
                                <div style="height:20px;width:20px;border:1px solid grey;margin:5px 70px;"></div>
                                <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:-25px 0 5px 30px;"></div>
                                <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:31px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:45px;border-bottom:1px solid grey;margin:5px 0 5px 45px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 0 5px 30px;"></div>
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23sidemain_c" text="sidemain_layout" style="display:inline-block" />
                        <label id="q23sidemain_tA" for="q23sidemain_c">Main Menu / Side(s)</label>
                    </div>
                    <div id="q23mainfoot_t" style="grid-row:1 / 2;grid-column:3 / 4;display:inline-block;">
                        <div id="mainfoot" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="fmainDisplay_out" style="width:80px;height:75px;overflow:hidden;">
                                <div id="fmainDisplayA">
                                    <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:40px;border-bottom:1px solid grey;margin:5px 10px 5px 30px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:20px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                </div>
                                <div id="fmainDisplayB" style="visibility:collapse;height:0;">
                                    <div style="height:1px;width:35px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:20px;width:20px;border:1px solid grey;border-radius:10px;margin:5px 10px;"></div>
                                    <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:-25px 10px 5px 40px;"></div>
                                    <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 10px 5px 40px;"></div>
                                    <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 10px 5px 40px;"></div>
                                    <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 10px 5px 40px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:25px;border-bottom:1px solid grey;margin:5px 10px 5px 45px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:28px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                    <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                </div>
                            </div>
                            <div id="footDisplay" style="width:80px;height:20px;display:grid;grid-template-columns:4px repeat(4, 18px) 4px;grid-template-rows:15px;">
                                <div style="border-top:1px solid black;grid-column:1 / 2;"></div>
                                <div id="footADisplay" style="border-top:1px solid white;border-left:1px solid grey;border-right:1px solid grey;border-bottom:1px solid grey;grid-column:2 / 3;"></div>
                                <div id="footBDisplay" style="border-top:1px solid black;grid-column:3 / 4;"></div>
                                <div style="border-top:1px solid black;grid-column:4 / 5;"></div>
                                <div style="border-top:1px solid black;grid-column:5 / 6;"></div>
                                <div style="border-top:1px solid black;grid-column:6 / 7;"></div>
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23mainfoot_c" text="mainfoot_layout" style="display:inline-block;" />
                        <label id="q23mainfoot_tA" for="q23mainfoot_c">Main / Footer (Mobile Only)</label>
                    </div>
                    <div id="q23headmain_t" style="grid-row:2 / 3;grid-column:1 / 2;display:inline-block;">
                        <div id="headmain" style="width:80px;height:95px;border:2px solid black;margin:10px auto;overflow:hidden;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="hmainDisplay">
                                <div style="height:20px;width:80px;border-bottom:1px solid grey;margin:0;"></div>
                                <div style="height:1px;width:50px;border-bottom:2px solid black;margin:-14px 0 5px 15px;"></div>
                                <div style="height:1px;width:35px;border-bottom:1px solid grey;margin:20px 10px 5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                <div style="height:1px;width:30px;border-bottom:1px solid grey;margin:5px 0 5px 40px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                <div style="height:1px;width:35px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid white;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                                <div style="height:1px;width:60px;border-bottom:1px solid grey;margin:5px 10px;"></div>
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23headmain_c" text="headmain_layout" style="display:inline-block;" />
                        <label id="q23headmain_tA" for="q23headmain_c">Header / Main</label>
                    </div>
                    <div id="q23response_t" style="grid-row:2 / 3;grid-column:2 / 3;display:inline-block;">
                        <div id="response" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="respDisplay">
                                <br />
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23response_c" text="responsive_layout" style="display:inline-block;" />
                        <label id="q23response_tA" for="q23response_c">Responsive</label>
                    </div>
                    <div id="q23horizscroll_t" style="grid-row:2 / 3;grid-column:3 / 4;display:inline-block;">
                        <div id="horizscroll" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="horizSDisplay">
                                <br />
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23horizscroll_c" text="horizscroll_layout" style="display:inline-block;" />
                        <label id="q23horizscroll_tA" for="q23horizscroll_c">Horizontal Scrolling</label>
                    </div>
                    <div id="q231stgame_t" style="grid-row:3 / 4;grid-column:1 / 2;display:inline-block;">
                        <div id="1stgame" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="1stgameDisplay">
                                <br />
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23_1stgame_c" text="firstgame_layout" style="display:inline-block;" />
                        <label id="q231stgame_tA" for="q23_1stgame_c">First person (Gaming only)</label>
                    </div>
                    <div id="q23mapgame_t" style="grid-row:3 / 4;grid-column:2 / 3;display:inline-block;">
                        <div id="mapgame" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="mapgameDisplay">
                                <br />
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23_mapgame_c" text="mapgame_layout" style="display:inline-block;" />
                        <label id="q23mapgame_tA" for="q23_mapgame_c">Map Layout (Gaming only)</label>
                    </div>
                    <div id="q23console_t" style="grid-row:3 / 4;grid-column:3 / 4;display:inline-block;">
                        <div id="console" style="width:80px;height:95px;border:2px solid black;margin:10px auto;" ondblclick="onDoubleClickLayout(this.id)">
                            <div id="consoleDisplay">
                                <br />
                            </div>
                        </div>
                        <input type="checkbox" name="q23" id="q23console_c" text="console_layout" style="display:inline-block;" />
                        <label id="q23console_tA" for="q23console_c">Console / Command Line</label>
                    </div>
                    <div id="q23nopref_t" style="grid-row:4 / 5;grid-column:1 / 2;display:inline-block;">
                        <div id="noprefDisplay" style="width:80px;height:95px;border:2px solid white;margin:10px auto;"></div>
                        <input type="checkbox" name="q23" id="q23nopref_c" text="nopref_layout" style="display:inline-block;" />
                        <label id="q23nopref_tA" for="q23nopref_c">No Preference</label>
                    </div>
                    <div id="q23none_t" style="grid-row:4 / 5;grid-column:2 / 3;display:inline-block;">
                        <div id="noneDisplay" style="width:80px;height:95px;border:2px solid white;margin:10px auto;"></div>
                        <input type="checkbox" name="q23" id="q23none_c" text="none_layout" style="display:inline-block;" />
                        <label id="q23none_tA" for="q23none_c">No Layout</label>
                    </div>
                    <div id="q23o_t" style="grid-row:4 / 5;grid-column:3 / 4;display:inline-block;">
                        <div id="otherDisplay" style="width:80px;height:95px;border:2px solid white;margin:10px auto;"></div>
                        <input type="checkbox" name="q23" id="q23o_c" text="other_layout" onclick="enableTextBox(this.id)" style="display:inline-block;" />
                        <label id="q23o_tA" for="q23o_c" style="user-select:none;">Other...</label>
                    </div>
                </div>
            </div>
            <div id="question24" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Do you have any examples that reflect the layout that you are looking for?</label>
                <input type="radio" name="q24" id="q24yes_c" text="examples_yes" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div id="q24yes_t" style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q24yes_tA" for="q24yes_c">Yes</label>
                    <div id="q24yes_tB" class="quest_mark">?</div>
                </div>
                <input type="radio" name="q24" id="q24no_c" text="example_no" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div id="q24no_t" style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q24no_tA" for="q24no_c">No</label>
                    <div id="q24no_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question25" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Please provide a couple links of comparison (url's are best).</label>
                <label style="grid-row:2 / 3;grid-column:2 / 3;">1.</label>
                <input id="q25one_t" type="url" style="font-size:1em;border-bottom:4px solid black;border-left:1px solid white;border-top:1px solid white;border-right:1px solid white;grid-row:2 / 3;grid-column:3 / 6;" />
                <label style="grid-row:3 / 4;grid-column:2 / 3;">2.</label>
                <input id="q25two_t" type="url" style="font-size:1em;border-bottom:4px solid black;border-left:1px solid white;border-top:1px solid white;border-right:1px solid white;grid-row:3 / 4;grid-column:3 / 6;" />
                <label style="grid-row:4 / 5;grid-column:2 / 3;">3.</label>
                <input id="q25three_t" type="url" style="font-size:1em;border-bottom:4px solid black;border-left:1px solid white;border-top:1px solid white;border-right:1px solid white;grid-row:4 / 5;grid-column:3 / 6;" />
                <label style="grid-row:5 / 6;grid-column:2 / 3;">4.</label>
                <input id="q25four_t" type="url" style="font-size:1em;border-bottom:4px solid black;border-left:1px solid white;border-top:1px solid white;border-right:1px solid white;grid-row:5 / 6;grid-column:3 / 6;" />
                <label style="grid-row:6 / 7;grid-column:2 / 3;">5.</label>
                <input id="q25five_t" type="url" style="font-size:1em;border-bottom:4px solid black;border-left:1px solid white;border-top:1px solid white;border-right:1px solid white;grid-row:6 / 7;grid-column:3 / 6;" />
            </div>
            <div id="question26" class="question" style="display:none;"></div>
            <div id="question27" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Please explain what kind of purchases and explain the reasoning for not using the store for the purchase.</label>
                <textarea id="q27" style="grid-row:2 / 9;grid-column:2 / 6;height:350px"></textarea>
            </div>
        </div>
        <div id="part4">
            <div id="part4_intro">

            </div>
            <div id="question28" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">What features are looking to have in this application? (Mark all that apply.)</label>
                <div style="grid-template-columns:50px repeat(3, 35px 1fr) 50px;display:grid;grid-row:2 / 3;grid-column:2 / 6;">
                    <input type="checkbox" name="q28" id="q28featInv_c" text="inventorying" style="grid-column:2 / 3;align-self:center;" />
                    <div id="q28featInv_t" style="grid-column:3 / 4;display:inline-block;align-self:center;">
                        <label id="q28featInv_tA" for="q28featInv_c">Inventorying</label>
                        <div id="q28featInv_tB" class="quest_mark">?</div>
                    </div>
                        <input type="checkbox" name="q28" id="q28featScan_c" text="scanner" style="grid-column:4 / 5;align-self:center;" />
                    <div id="q28featScan_t" style="grid-column:5 / 6;display:inline-block;align-self:center;">
                        <label id="q28featScan_tA" for="q28featScan_c">Scanner</label>
                        <div id="q28featScan_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featChat_c" text="chat" style="grid-column:6 / 7;align-self:center;" />
                    <div id="q28featChat_t" style="grid-column:7 / 8;display:inline-block;align-self:center;">
                        <label id="q28featChat_tA" for="q28featChat_c">Chat</label>
                        <div id="q28featChat_tB" class="quest_mark">?</div>
                    </div>
                </div>
                <div style="grid-template-columns:50px repeat(3, 35px 1fr) 50px;display:grid;grid-row:3 / 4;grid-column:2 / 6;">
                    <input type="checkbox" name="q28" id="q28featVid_c" text="video_calling" style="grid-column:2 / 3;align-self:center;" />
                    <div id="q28featVid_t" style="grid-column:3 / 4;display:inline-block;align-self:center;">
                        <label id="q28featVid_tA" for="q28featVid_c">Video Calling</label>
                        <div id="q28featVid_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featFin_c" text="financial" style="grid-column:4 / 5;align-self:center;" />
                    <div id="q28featFin_t" style="grid-column:5 / 6;display:inline-block;align-self:center;">
                        <label id="q28featFin_tA" for="q28featFin_c">Financial</label>
                        <div id="q28featFin_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featSch_c" text="schedule_reminder" style="grid-column:6 / 7;align-self:center;" />
                    <div id="q28featSch_t" style="grid-column:7 / 8;display:inline-block;align-self:center;">
                        <label id="q28featSch_tA" for="q28featSch_c" title="">Schedule/Reminder</label>
                        <div id="q28featSch_tB" class="quest_mark">?</div>
                    </div>
                </div>
                <div style="grid-template-columns:50px repeat(3, 35px 1fr) 50px;display:grid;grid-row:4 / 5;grid-column:2 / 6;">
                    <input type="checkbox" name="q28" id="q28featAcc_c" text="accounts" style="grid-column:2 / 3;align-self:center;" />
                    <div id="q28featAcc_t" style="grid-column:3 / 4;display:inline-block;align-self:center;">
                        <label id="q28featAcc_tA" for="q28featAcc_c">Accounts</label>
                        <div id="q28featAcc_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featRep_c" text="reports" style="grid-column:4 / 5;align-self:center;" />
                    <div id="q28featRep_t" style="grid-column:5 / 6;display:inline-block;align-self:center;">
                        <label id="q28featRep_tA" for="q28featRep_c">Reports</label>
                        <div id="q28featRep_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featReg_c" text="register_system" style="grid-column:6 / 7;align-self:center;" />
                    <div id="q28featReg_t" style="grid-column:7 / 8;display:inline-block;align-self:center;">
                        <label id="q28featReg_tA" for="q28featReg_c">Register System</label>
                        <div id="q28featReg_tB" class="quest_mark">?</div>
                    </div>
                </div>
                <div style="grid-template-columns:50px repeat(3, 35px 1fr) 50px;display:grid;grid-row:5 / 6;grid-column:2 / 6;">
                    <input type="checkbox" name="q28" id="q28featDia_c" text="diagnostic_tester" style="grid-column:2 / 3;align-self:center;" />
                    <div id="q28featDia_t" style="grid-column:3 / 4;display:inline-block;align-self:center;">
                        <label id="q28featDia_tA" for="q28featDia_c">Diagnostic Tester</label>
                        <div id="q28featDia_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featOpE_c" text="operator_equipment" style="grid-column:4 / 5;align-self:center;" />
                    <div id="q28featOpE_t" style="grid-column:5 / 6;display:inline-block;align-self:center;">
                        <label id="q28featOpE_tA" for="q28featOpE_c">Operator Equipment</label>
                        <div id="q28featOpE_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featTrans_c" text="translator" style="grid-column:6 / 7;align-self:center;" />
                    <div id="q28featTrans_t" style="grid-column:7 / 8;display:inline-block;align-self:center;">
                        <label id="q28featTrans_tA" for="q28featTrans_c">Translator</label>
                        <div id="q28featTrans_tB" class="quest_mark">?</div>
                    </div>
                </div>
                <div style="grid-template-columns:50px repeat(3, 35px 1fr) 50px;display:grid;grid-row:6 / 7;grid-column:2 / 6;">
                    <input type="checkbox" name="q28" id="q28featText_c" text="text_editing" style="grid-column:2 / 3;align-self:center;" />
                    <div id="q28featText_t" style="grid-column:3 / 4;display:inline-block;align-self:center;">
                        <label id="q28featText_tA" for="q28featText_c">Text Editing</label>
                        <div id="q28featText_tB" class="quest_mark">?</div>
                    </div>
                    <input type="checkbox" name="q28" id="q28featAI_c" text="artificial_intelligence" style="grid-column:4 / 5;align-self:center;" />
                    <div id="q28featAI_t" style="grid-column:5 / 6;display:inline-block;align-self:center;">
                        <label id="q28featAI_tA" for="q28featAI_c">Artificial Intelligence</label>
                        <div id="q28featAI_tB" class="quest_mark">?</div>
                    </div>
                </div>
            </div>
            <div id="question29" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">If there are other features that you would like to have in this application that wasn’t cover in the last question. Please sort them based upon importance (“1” being the most importance and “12” being the least important).</label>
                <div id="q29userFeatA" style="display:grid;grid-template-columns:repeat(3, 1fr);grid-row:2 / 3;row-gap:10px;grid-column:2 / 6;">
                    <div style="grid-column:1 / 2;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px;"> 1. </label>
                        <input type="text" id="q29uFeatA" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:2 / 3;display:inline-block;font-size:22px;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 2. </label>
                        <input type="text" id="q29uFeatB" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:3 / 4;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 3. </label>
                        <input type="text" id="q29uFeatC" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                </div>
                <div id="q29userFeatB" style="display:grid;grid-template-columns:repeat(3, 1fr);grid-row:3 / 4;row-gap:10px;grid-column:2 / 6;">
                    <div style="grid-column:1 / 2;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 4. </label>
                        <input type="text" id="q29uFeatD" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:2 / 3;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 5. </label>
                        <input type="text" id="q29uFeatE" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:3 / 4;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 6. </label>
                        <input type="text" id="q29uFeatF" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                </div>
                <div id="q29userFeatC" style="display:grid;grid-template-columns:repeat(3, 1fr);grid-row:4 / 5;row-gap:10px;grid-column:2 / 6;">
                    <div style="grid-column:1 / 2;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 7. </label>
                        <input type="text" id="q29uFeatG" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:2 / 3;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 8. </label>
                        <input type="text" id="q29uFeatH" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:3 / 4;display:inline-block;">
                        <label style="margin-left:20px;display:inline-block;font-size:22px"> 9. </label>
                        <input type="text" id="q29uFeatI" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                </div>
                <div id="q29userFeatD" style="display:grid;grid-template-columns:repeat(3, 1fr);grid-row:5 / 6;row-gap:10px;grid-column:2 / 6;">
                    <div style="grid-column:1 / 2;display:inline-block;">
                        <label style="display:inline-block;font-size:22px;padding-left:7px;">10. </label>
                        <input type="text" id="q29uFeatJ" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:2 / 3;display:inline-block;">
                        <label style="display:inline-block;font-size:22px;padding-left:7px;">11. </label>
                        <input type="text" id="q29uFeatK" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                    <div style="grid-column:3 / 4;display:inline-block;">
                        <label style="display:inline-block;font-size:22px;padding-left:7px;">12. </label>
                        <input type="text" id="q29uFeatL" style="display:inline-block;width:74%;font-size:22px;padding:10px;" />
                    </div>
                </div>
            </div>
            <div id="question30" class="question" style="display:none;">
                <label id="q30optFeat" style="grid-row:1 / 2;grid-column:2 / 6;">Please pick the Top 5 features that the highest priority. We are will optmize these features on your application.</label>
                <div style="display:grid;grid-row:2 / 3;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="q30one" style="grid-column:1 / 2;">
                        <label id="fRank1" class="rank" style="display:inline-block;">1. </label>
                        <div id="divS1" class="divDrop divS" ondrop="dropThree(event)" ondragover="dragOverThree(event)" ondragleave="dragLeaveThree(event)" ondragenter="dragEnterThree(event)" style="display:inline-block;width:235px;"><label style="visibility:hidden;">Y</label></div>
                    </div>
                    <div id="divM1" style="grid-column:3 / 4;">
                        <label id="fDragL1" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE1" style="grid-column:4 / 5;">
                        <label id="fDragR1" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:3 / 4;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="q30two" style="grid-column:1 / 2;">
                        <label id="fRank2" class="rank" style="display:inline-block;">2. </label>
                        <div id="divS2" class="divDrop divS" ondrop="dropThree(event)" ondragover="dragOverThree(event)" ondragleave="dragLeaveThree(event)" ondragenter="dragEnterThree(event)" style="display:inline-block;width:235px;"><label style="visibility:hidden;">Y</label></div>
                    </div>
                    <div id="divM2" style="grid-column:3 / 4;">
                        <label id="fDragL2" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE2" style="grid-column:4 / 5;">
                        <label id="fDragR2" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:4 / 5;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="q30three" style="grid-column:1 / 2;">
                        <label id="fRank3" class="rank" style="display:inline-block;">3. </label>
                        <div id="divS3" class="divDrop divS" ondrop="dropThree(event)" ondragover="dragOverThree(event)" ondragleave="dragLeaveThree(event)" ondragenter="dragEnterThree(event)" style="display:inline-block;width:235px;"><label style="visibility:hidden;">Y</label></div>
                    </div>
                    <div id="divM3" style="grid-column:3 / 4;">
                        <label id="fDragL3" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE3" style="grid-column:4 / 5;">
                        <label id="fDragR3" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:5 / 6;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="q3four" style="grid-column:1 / 2;">
                        <label id="fRank4" class="rank" style="display:inline-block;">4. </label>
                        <div id="divS4" class="divDrop divS" ondrop="dropThree(event)" ondragover="dragOverThree(event)" ondragleave="dragLeaveThree(event)" ondragenter="dragEnterThree(event)" style="display:inline-block;width:235px;"><label style="visibility:hidden;">Y</label></div>
                    </div>
                    <div id="divM4" style="grid-column:3 / 4;">
                        <label id="fDragL4" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE4" style="grid-column:4 / 5;">
                        <label id="fDragR4" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:6 / 7;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="q30five" style="grid-column:1 / 2;">
                        <label id="fRank5" class="rank" style="display:inline-block;">5. </label>
                        <div id="divS5" class="divDrop divS" ondrop="dropThree(event)" ondragover="dragOverThree(event)" ondragleave="dragLeaveThree(event)" ondragenter="dragEnterThree(event)" style="display:inline-block;width:235px;"><label style="visibility:hidden;">Y</label></div>
                    </div>
                    <div id="divM5" style="grid-column:3 / 4;">
                        <label id="fDragL5" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE5" style="grid-column:4 / 5;">
                        <label id="fDragR5" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:7 / 8;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM6" style="grid-column:3 / 4;">
                        <label id="fDragL6" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE6" style="grid-column:4 / 5;">
                        <label id="fDragR6" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:8 / 9;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM7" style="grid-column:3 / 4;">
                        <label id="fDragL7" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE7" style="grid-column:4 / 5;">
                        <label id="fDragR7" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:9 / 10;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM8" style="grid-column:3 / 4;">
                        <label id="fDragL8" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE8" style="grid-column:4 / 5;">
                        <label id="fDragR8" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:10 / 11;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM9" style="grid-column:3 / 4;">
                        <label id="fDragL9" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE9" style="grid-column:4 / 5;">
                        <label id="fDragR9" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:11 / 12;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM10" style="grid-column:3 / 4;">
                        <label id="fDragL10" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE10" style="grid-column:4 / 5;">
                        <label id="fDragR10" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:12 / 13;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM11" style="grid-column:3 / 4;">
                        <label id="fDragL11" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE11" style="grid-column:4 / 5;">
                        <label id="fDragR11" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:13 / 14;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM12" style="grid-column:3 / 4;">
                        <label id="fDragL12" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE12" style="grid-column:4 / 5;">
                        <label id="fDragR12" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:14 / 15;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM13" style="grid-column:3 / 4;">
                        <label id="fDragL13" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE13" style="grid-column:4 / 5;">
                        <label id="fDragR13" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
                <div style="display:grid;grid-row:15 / 16;grid-column:2 / 6;grid-template-columns:275px 10% 1fr 1fr;">
                    <div id="divM14" style="grid-column:3 / 4;">
                        <label id="fDragL14" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                    <div id="divE14" style="grid-column:4 / 5;">
                        <label id="fDragR14" draggable="true" ondragstart="dragStartThree(event)" ondragend="dragEndThree(event)" width="336" height="69"></label>
                    </div>
                </div>
            </div>
            <div id="question31" class="question" style="display:none;"></div>
            <div id="question32" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">What is the purpose of the scanner? (Mark all that apply)</label>
                <input type="checkbox" value="website" name="q32" id="q32bar_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q32bar_tA" for="q32bar_c" title="" style="display:inline-block;">Barcode</label>
                    <div id="q32bar_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="driver" name="q32" id="q32qr_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q32qr_tA" for="q32qr_c" title="" style="display:inline-block;">QR code</label>
                    <div id="q32qr_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="desktop_application" name="q32" id="q32trans_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q32trans_tA" for="q32trans_c" title="" style="display:inline-block;">Word Translator</label>
                    <div id="q32trans_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="mobile_application" name="q32" id="q32cam_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q32cam_tA" for="q32cam_c" title="" style="display:inline-block;">Pictures via Camera</label>
                    <div id="q32cam_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="operating_system" name="q32" id="q32extScan_c" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div style="grid-row:6 / 7;grid-column:4 / 6;display:inline-block;">
                    <label id="q32extScan_tA" for="q32extScan_c" title="" style="display:inline-block;">Pictures via External Scanner</label>
                    <div id="q32extScan_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="game_console" name="q32" id="q32upload_c" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div style="grid-row:7 / 8;grid-column:4 / 6;display:inline-block;">
                    <label id="q32upload_tA" for="q32upload_c" title="" style="display:inline-block;">Uploaded Documents</label>
                    <div id="q32uplaod_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="other" name="q32" id="q32o_c" onclick="enableTextBox(this.id)" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div style="grid-row:8 / 9;grid-column:4 / 6;">
                    <label id="q32o_tA" for="q32o_c" title="" style="display:inline-block;user-select:none;">Other...</label>
                    <input id="q32o_tB" type="text" style="width:250px;font-size:inherit;font-family:inherit;display:inline-block;" disabled="disabled" />
                </div>
            </div>
            <div id="question33" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Describe the overall purpose and functionality of this application, including all the information in this form. Please be specific and provide as much details as possible.</label>
                <textarea id="q33" style="grid-row:2 / 9;grid-column:2 / 6;height:350px"></textarea>
            </div>
            <div id="question34" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Type of Application (Mark all that apply):</label>
                <input type="checkbox" value="sso" name="q34" id="q34sso_c" style="grid-row:2 / 3;grid-column:3 / 4;" />
                <div style="grid-row:2 / 3;grid-column:4 / 6;display:inline-block;">
                    <label id="q34sso_tA" for="q34sso_c" title="" style="display:inline-block;">Single Sign-On (SSO)</label>
                    <div id="q34sso_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="mfa" name="q34" id="q34mfa_c" style="grid-row:3 / 4;grid-column:3 / 4;" />
                <div style="grid-row:3 / 4;grid-column:4 / 6;display:inline-block;">
                    <label id="q34mfa_tA" for="q34mfa_c" title="" style="display:inline-block;">Multiple-Factor Authentication MFA)</label>
                    <div id="q34mfa_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="eap" name="q34" id="q34eap_c" style="grid-row:4 / 5;grid-column:3 / 4;" />
                <div style="grid-row:4 / 5;grid-column:4 / 6;display:inline-block;">
                    <label id="q34eap_tA" for="q34eap_c" title="" style="display:inline-block;">Extensible Authentication Protocol (EAP)</label>
                    <div id="q34eap_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="chap" name="q34" id="q34chap_c" style="grid-row:5 / 6;grid-column:3 / 4;" />
                <div style="grid-row:5 / 6;grid-column:4 / 6;display:inline-block;">
                    <label id="q34chap_tA" for="q34chap_c" title="" style="display:inline-block;">Challenge Handshake Authentication Protocol (CHAP)</label>
                    <div id="q34chap_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" value="virtual_machine" name="q34" id="q34vm_c" style="grid-row:6 / 7;grid-column:3 / 4;" />
                <div style="grid-row:6 / 7;grid-column:4 / 6;display:inline-block;">
                    <label id="q34vm_tA" for="q34vm_c" title="" style="display:inline-block;">Virtual Machine</label>
                    <div id="q34vm_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="usb_portability" name="q34" id="q34usbport_c" style="grid-row:7 / 8;grid-column:3 / 4;" />
                <div style="grid-row:7 / 8;grid-column:4 / 6;display:inline-block;">
                    <label id="q34usbport_tA" for="q34usbport_c" title="" style="display:inline-block;">USB Portability</label>
                    <div id="q34usbport_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="biometrics_login" name="q34" id="q34bio_c" style="grid-row:8 / 9;grid-column:3 / 4;" />
                <div style="grid-row:8 / 9;grid-column:4 / 6;display:inline-block;">
                    <label id="q34bio_tA" for="q34bio_c" title="" style="display:inline-block;">Biometrics Log-In</label>
                    <div id="q34bio_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="encrypt_protocol" name="q34" id="q34encprot_c" style="grid-row:9 / 10;grid-column:3 / 4;" />
                <div style="grid-row:9 / 10;grid-column:4 / 6;display:inline-block;">
                    <label id="q34encprot_tA" for="q34encprot_c" title="" style="display:inline-block;">Encryption Protocol</label>
                    <div id="q34encprot_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="offline_integration" name="q34" id="q34offline_c" style="grid-row:10 / 11;grid-column:3 / 4;" />
                <div style="grid-row:10 / 11;grid-column:4 / 6;display:inline-block;">
                    <label id="q34ofline_tA" for="q34offline_c" title="" style="display:inline-block;">Offline Integration</label>
                    <div id="q34offline_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="smap" name="q34" id="q34smap_c" style="grid-row:11 / 12;grid-column:3 / 4;" />
                <div style="grid-row:11 / 12;grid-column:4 / 6;display:inline-block;">
                    <label id="q34smap_tA" for="q34smap_c" title="" style="display:inline-block;">Simultaneous Multiple People Corroboration (SMPC)</label>
                    <div id="q34smap_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="card_purchases" name="q34" id="q34card_c" style="grid-row:12 / 13;grid-column:3 / 4;" />
                <div style="grid-row:12 / 13;grid-column:4 / 6;display:inline-block;">
                    <label id="q34card_tA" for="q34card_c" title="" style="display:inline-block;">Card Purchases</label>
                    <div id="q34card_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="google_sync" name="q34" id="q34google_c" style="grid-row:13 / 14;grid-column:3 / 4;" />
                <div style="grid-row:13 / 14;grid-column:4 / 6;display:inline-block;">
                    <label id="q34google_tA" for="q34google_c" title="" style="display:inline-block;">Google App Sync</label>
                    <div id="q34google_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="browser_ext" name="q34" id="q34browsext_c" style="grid-row:14 / 15;grid-column:3 / 4;" />
                <div style="grid-row:14 / 15;grid-column:4 / 6;display:inline-block;">
                    <label id="q34browsext_tA" for="q34browsext_c" title="" style="display:inline-block;">Browser Extension</label>
                    <div id="q34browsext_tB" class="quest_mark">?</div>
                </div>
                <input type="checkbox" text="other" name="q34" id="q34o_c" onclick="enableTextBox(this.id)" style="grid-row:15 / 16;grid-column:3 / 4;" />
                <div style="grid-row:15 / 16;grid-column:4 / 6;">
                    <label id="q34o_tA" for="q34o_c" title="" style="display:inline-block;user-select:none;">Other...</label>
                    <input id="q34o_tB" type="text" style="width:250px;font-size:inherit;font-family:inherit;display:inline-block;" disabled="disabled" />
                </div>
            </div>
            <div id="question35" class="question" style="display:none;"></div>
            <div id="question36" class="question" style="display:none;">
                <label style="grid-row:1 / 2;grid-column:2 / 6;">Do you have any further that you would like for us to know about this application?</label>
                <textarea id="q36" style="grid-row:2 / 9;grid-column:2 / 6;height:350px"></textarea>
            </div>
        </div>
        <div id="part5">
            <div id="part5_intro">

            </div>
            <div id="question37" class="question" style="display:none;">
                <label id="q37a_c" style="grid-row:1 / 2;grid-column:2 / 6;">Name:</label>
                <div style="grid-row:2 / 3;grid-column:2 / 6;">
                    <input id="q37a_tA" type="text" />
                    <div id="q37a_tB" class="quest_mark">?</div>
                </div>
                <label id="q37b" style="grid-row:3 / 4;grid-column:2 / 6;">Company Name:</label>
                <div style="grid-row:4 / 5;grid-column:2 / 6;">
                    <input id="q37b_tA" type="text" />
                    <div id="q37b_tB" class="quest_mark">?</div>
                </div>
            </div>
            <div id="question38" class="question" style="display:none;">

            </div>
            <div id="question39" class="question" style="display:none;">

            </div>
            <div id="question40" class="question" style="display:none;">

            </div>
        </div>
        <div id="modal" style="width:100%;height:100%;position:fixed;top:0;left:0;z-index:1;background-color:rgba(0,0,0,0.4);display:none;">
            <div id="popup" style="display:grid;position:fixed;border:2px solid #f26722;background-color:white;grid-template-columns:20px 1fr 25px 20px;grid-template-rows:20px 35px 1fr;overflow:hidden;">
                <label id="titlePopup" style="color:#f26722;grid-column:2 / 3;grid-row:2 / 3;font-size:1.5em;"></label>
                <input type="button" id="closeModal" onclick="closePopup()" style="color:#f26722;background-color:white;border:1px solid white;grid-row:2 / 3;grid-column:3 / 4;font-size:1.5em;align-self:start;" value="X" />
                <div id="allPopup" style="display:none;grid-row:3 / 4;grid-column:2 / 4;border:1px solid black;height:92.5%;overflow:auto;">
                    <div id="sidemenuAll" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a onclick="loadAllDetails()">What We Do?</a>
                        <a onclick="loadAllApp()">Make an Appointment</a>
                        <a onclick="loadAllAbout()">About Us</a>
                        <a href="#">Contact</a>
                    </div>
                    <div id="allPUMain" style="width:100%;height:900px;">
                        <div id="allPUHeader" style="width:100%;background-color:lightgreen;font-size:1.5em;vertical-align:central;">
                            <h3 style="text-align:center;padding:40px 0 15px 0;margin:0 35%;color:purple;">The Happy Dog Groomers</h3>
                            <div id="menuOpt" style="display:grid;width:100%;grid-template-columns:repeat(5, 1fr);padding:20px 0;">
                                <div class="menu" onclick="menuPopup(this)" style="padding:0;grid-column:5 / 6;align-items:end;margin:0 10px 0 auto;">
                                    <div class="m1"></div>
                                    <div class="m2"></div>
                                    <div class="m3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="sidemainPopup" style="display:none;">

                </div>
                <div id="mainfootPopup" style="display:none;">

                </div>
                <div id="headmainPopup" style="display:none;grid-row:3 / 4;grid-column:2 / 4;border:1px solid black;height:92.5%;overflow:auto;"">
                    <div id="headmainPUMain" style="width:100%;height:900px;">
                        <div id="headMainPUHeader" style="width:100%;background-color:lightgreen;font-size:1.5em;vertical-align:central;">
                            <h3 style="text-align:center;padding:40px 0 15px 0;margin:0 35%;color:purple;">The Happy Dog Groomers</h3>
                            <div id="headmainMenuOpt" style="display:grid;width:100%;grid-template-columns:repeat(5, 1fr);padding:20px 0;">
                                <a id="puHeadmainD" href="loadAllDetails()" style="color:purple;text-decoration:none;grid-column:2 / 3;display:none;align-items:center;">What We Do?</a>
                                <a id="puHeadmainApp" href="loadAllApp()" style="color:purple;text-decoration:none;grid-column:3 / 4;display:none;align-items:center;">Appointment</a>
                                <a id="puHeadmainAbout" href="loadAllAbout()" style="color:purple;text-decoration:none;grid-column:4 / 5;display:none;align-items:center;">About Us</a>
                                <div class="menu" onclick="menuPopup(this)" style="padding:0;grid-column:5 / 6;align-items:end;margin:0 10px 0 auto;">
                                    <div class="m1"></div>
                                    <div class="m2"></div>
                                    <div class="m3"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="responsePopup" style="display:none;">

                </div>
                <div id="horizscrollPopup" style="display:none;">

                </div>
                <div id="1stgamePopup" style="display:none;">

                </div>
                <div id="mapgamePopup" style="display:none;">

                </div>
                <div id="consolePopup" style="display:none;">

                </div>
                <div id="savePopup" style="grid-row:3 / 4;grid-column:2 / 4;display:none;height:92.5%;overflow:auto;">
                    <div id="loginAccount" style="display:grid;grid-template-rows:25% 15px repeat(6, 1fr);grid-template-columns:20% 1fr 20%;color:#f26722;row-gap:10px;">
                        <label id="errL" style="grid-row:2 / 3;grid-column:2 / 3;font-size:14px;color:red;visibility:collapse;"></label>
                        <label style="grid-row:3 / 4;grid-column:2 / 3;font-size:18px;align-self:center;">Username</label>
                        <input id="userL" type="text" onkeyup="keySignInCheck(event, this.id)" style="grid-row:4 / 5;grid-column:2 / 3;font-size:16px;border-radius:10px;padding:10px;border:1px solid #f26722;" />
                        <label style="grid-row:5 / 6;grid-column:2 / 3;font-size:18px;align-self:center;">Password</label>
                        <div style="grid-row:6 / 7;grid-column:2 / 3;display:grid;grid-template-columns:4fr 45px;">
                            <input id="passL" type="password" onkeyup="seeThisPass(event, this.id)" style="grid-row:1 / 2;grid-column:1 / 3;border-radius:10px;border:1px solid #f26722;padding:10px;font-size:16px;" />
                            <input id="vwpassL" type="button" onclick="viewPass(this.id)" style="display:none;font-size:1.5em;grid-row:1 / 2;grid-column:2 / 3;background-color:transparent;padding:0;margin:0;border:1px solid transparent;" />
                        </div>
                        <div style="grid-row:7 / 9;grid-column:2 / 3;display:grid;grid-template-columns:1fr 1fr 1fr;">
                            <input id="loginBtn" type="button" onclick="signIn(this.id)" value="Log In" style="justify-self:end;grid-row:1 / 2;grid-column:3 / 4;font-size:20px;border-radius:10px;background-color:#f26722;border:1px solid #f26722;color:white;margin:auto 0;padding:10px 15px;" />
                            <input type="button" onclick="createAcc('createAccount', this.id)" style="justify-self:start;cursor:pointer;grid-row:1 / 2;grid-column:1 / 2;color:blue;text-decoration:underline;background-color:white;border:1px solid white;" value="Create Account" />
                        </div>
                    </div>
                    <div id="createAccount" style="display:none;grid-template-rows:15px repeat(12, 2fr) 3fr;grid-template-columns:20% 1fr 20%;color:#f26722;">
                        <label id="errC" style="grid-row:1 / 2;grid-column:2 / 3;font-size:14px;color:red;visibility:collapse;"></label>
                        <div style="grid-row:2 / 3;grid-column:2 / 3;display:grid;grid-template-columns:1fr 1fr;">
                            <label style="grid-column:1 / 2;font-size:18px;align-self:center;margin-left:2.5px;">First Name</label>
                            <label style="grid-column:2 / 3;font-size:18px;align-self:center;margin-left:2.5px;">Last Name</label>
                        </div>
                        <div style="grid-row:3 / 4;grid-column:2 / 3;display:grid;grid-template-columns:1fr 1fr;">
                            <input id="firstN" type="text" onkeyup="keySignInCheck(event, this.id)" style="grid-column:1 / 2;border-radius:10px;font-size:16px;margin-right:2.5px;border:1px solid #f26722;padding:10px;" />
                            <input id="lastN" type="text" onkeyup="keySignInCheck(event, this.id)" style="grid-column:2 / 3;border-radius:10px;font-size:16px;margin-left:2.5px;border:1px solid #f26722;padding:10px;" />
                        </div>
                        <label style="grid-row:4 / 5;grid-column:2 / 3;font-size:18px;align-self:center;">Email</label>
                        <input id="emailC" type="text" onkeyup="keySignInCheck(event, this.id)" style="grid-row:5 / 6;grid-column:2 / 3;border-radius:10px;font-size:16px;border:1px solid #f26722;padding:10px;" />
                        <label style="grid-row:6 / 7;grid-column:2 / 3;font-size:18px;align-self:center;">Phone Number</label>
                        <input id="phoneC" onkeypress="formatPhone(event)" onkeyup="keySignInCheck(event, this.id)" type="text" style="grid-row:7 / 8;grid-column:2 / 3;border-radius:10px;font-size:16px;border:1px solid #f26722;padding:10px;" placeholder="(___) ___-____ x_____" />
                        <label style="grid-row:8 / 9;grid-column:2 / 3;font-size:18px;align-self:center;">Username</label>
                        <input id="userC" type="text" onkeyup="keySignInCheck(event, this.id)" style="grid-row:9 / 10;grid-column:2 / 3;border-radius:10px;font-size:16px;border:1px solid #f26722;padding:10px;" />
                        <label style="grid-row:10 / 11;grid-column:2 / 3;font-size:18px;align-self:center;">Password</label>
                        <div style="grid-row:11 / 12;grid-column:2 / 3;display:grid;grid-template-columns:1fr 45px 80px;">
                            <input id="createGen" type="button" onclick="createAcc('genPass', this.id)" style="grid-row:1 / 2;grid-column:3 / 4;border:1px solid #f26722;background-color:#f26722;border-radius:10px;color:white;margin-left:2px;" value="Generate" />
                            <input id="passC" type="password" onkeyup="seeThisPass(event, this.id)" style="grid-row:1 / 2;grid-column:1 / 3;font-size:16px;border-radius:10px;border:1px solid #f26722;padding:10px;" />
                            <input id="vwpassC" type="button" onclick="viewPass(this.id)" style="display:none;font-size:1.5em;grid-row:1 / 2;grid-column:2 / 3;background-color:transparent;padding:0;margin:0;border:1px solid transparent;" />
                        </div>
                        <label style="grid-row:12 / 13;grid-column:2 / 3;font-size:18px;align-self:center;">Confirm Password</label>
                        <div style="grid-row:13 / 14;grid-column:2 / 3;display:grid;grid-template-columns:1fr 45px;">
                            <input id="passR" type="password" onkeyup="seeThisPass(event, this.id)" style="grid-row:1 / 2;grid-column:1 / 3;border-radius:10px;font-size:16px;border:1px solid #f26722;padding:10px;" />
                            <input id="vwpassR" type="button" onclick="viewPass(this.id)" style="display:none;font-size:1.5em;grid-row:1 / 2;grid-column:2 / 3;background-color:transparent;padding:0;margin:0;border:1px solid transparent;" />
                        </div>
                        <div style="grid-row:14 / 15;grid-column:2 / 3;display:grid;grid-template-columns:1fr 1fr 1fr;grid-template-rows:1fr 1fr">
                            <input id="createBtn" type="button" value="Create" onclick="signIn(this.id)" style="grid-row:1 / 3;grid-column:3 / 4;font-size:20px;border-radius:10px;background-color:#f26722;border:1px solid #f26722;color:white;padding:10px 15px;justify-self:end;margin:auto 0;" />
                            <input type="button" onclick="createAcc('loginAccount', this.id)" style="align-self:center;justify-self:start;cursor:pointer;grid-row:1 / 2;grid-column:1 / 2;color:blue;text-decoration:underline;background-color:white;border:1px solid white;margin-top:2px;" value="Log In" />
                            <input type="button" onclick="createAcc('tiredAccount', this.id)" style="align-self:center;justify-self:start;cursor:pointer;grid-row:2 / 3;grid-column:1 / 2;color:blue;text-decoration:underline;background-color:white;border:1px solid white;" value="Tired of creating accounts" />
                        </div>
                    </div>
                    <div id="tiredAccount" style="display:none;grid-template-rows:repeat(12, 1fr);grid-template-columns:20% 1fr 20%;color:#f26722;">
                        <label id="errT" style="grid-row:1 / 2;grid-column:2 / 3;font-size:14px;color:red;visibility:collapse;"></label>
                        <label style="grid-row:2 / 3;grid-column:2 / 3;font-size:18px;align-self:center;">Email</label>
                        <input id="emailT" type="text"  onkeyup="keySignInCheck(event, this.id)" style="grid-row:3 / 4;grid-column:2 / 3;border-radius:10px;font-size:16px;padding:10px;border:1px solid #f26722;" />
                        <label style="grid-row:4 / 5;grid-column:2 / 3;font-size:18px;align-self:center;">Password</label>
                        <div style="grid-row:5 / 6;grid-column:2 / 3;display:grid;grid-template-columns:5fr 45px 80px;">
                            <input id="tiredGen" type="button" onclick="createAcc('genPass', this.id)" style="grid-row:1 / 2;grid-column:3 / 4;border:1px solid #f26722;background-color:#f26722;border-radius:10px;color:white;margin-left:2px;" value="Generate" />
                            <input id="passT" type="password" onkeyup="seeThisPass(event, this.id)" style="grid-row:1 / 2;grid-column:1 / 3;border-radius:10px;border:1px solid #f26722;font-size:16px;padding:10px;" />
                            <input id="vwpassT" type="button" onclick="viewPass(this.id)" style="display:none;font-size:1.5em;grid-row:1 / 2;grid-column:2 / 3;background-color:transparent;padding:0;margin:0;border:1px solid transparent;" />
                        </div>
                        <label style="grid-row:6 / 7;grid-column:2 / 3;font-size:18px;align-self:center;">Ticket Number</label>
                        <label id="ticketNo" style="grid-row:7 / 8;grid-column:2 / 3;border-radius:10px;font-size:1.5em;margin-left:15px;"></label>
                        <label style="grid-row:8 / 9;grid-column:2 / 3;font-size:18px;align-self:center;">Public Key</label>
                        <label id="pubKey" style="grid-row:9 / 10;grid-column:2 / 3;border-radius:10px;font-size:1.5em;margin-left:15px;"></label>
                        <div style="grid-row:10 / 12;grid-column:2 / 3;display:grid;grid-template-columns:1fr 150px;grid-template-rows:repeat(3, 1fr);">
                            <input id="createAltBtn" type="button" onclick="signIn(this.id)" value="Create" style="grid-row:1 / 3;grid-column:2 / 3;font-size:20px;border-radius:10px;background-color:#f26722;border:1px solid #f26722;color:white;padding:10px 20px;height:auto;width:auto;" />
                            <input type="button" onclick="createAcc('loginAccount', this.id)" style="cursor:pointer;text-align:left;grid-row:1 / 2;grid-column:1 / 2;color:blue;text-decoration:underline;background-color:white;border:1px solid white;" value="Log In" />
                            <input type="button" onclick="createAcc('createAccount', this.id)" style="cursor:pointer;text-align:left;grid-row:2 / 3;grid-column:1 / 2;color:blue;text-decoration:underline;background-color:white;border:1px solid white;" value="Rather create an account" />
                        </div>
                    </div>
                    <div id="genPass" style="display:none;grid-template-rows:2fr 4fr 2fr repeat(3, 1fr);grid-template-columns:20% 1fr 20%;font-size:1.5em;">
                        <div id="cols" style="grid-row:1 / 2;grid-column:2 / 3;display:grid;grid-template-rows:repeat(2, 1fr);align-items:center;padding:8px;">
                            <label id="color" style="grid-row:1 / 2;color:#f26722;">Pick a color:</label>
                            <select name="colors" id="colorList" style="grid-row:2 / 3;color:#f26722;border:1px solid #f26722;padding:5px;border-radius:10px;font-size:16px;">
                                <option value="" disabled="disabled" selected="selected" style="color:#f26722;">Select a color</option>
                                <option value="black">Black</option>
                                <option value="blue">Blue</option>
                                <option value="brown">Brown</option>
                                <option value="coral">Coral</option>
                                <option value="crimson">Crimson</option>
                                <option value="cyan">Cyan</option>
                                <option value="fuchsia">Fuchsia</option>
                                <option value="green">Green</option>
                                <option value="grey">Grey</option>
                                <option value="indigo">Indigo</option>
                                <option value="lavender">Lavender</option>
                                <option value="lime">Lime</option>
                                <option value="magenta">Magenta</option>
                                <option value="mahogany">Mahogany</option>
                                <option value="maroon">Maroon</option>
                                <option value="navy">Navy</option>
                                <option value="olive">Olive</option>
                                <option value="orange">Orange</option>
                                <option value="orchid">Orchid</option>
                                <option value="pink">Pink</option>
                                <option value="purple">Purple</option>
                                <option value="red">Red</option>
                                <option value="salmon">Salmon</option>
                                <option value="silver">Silver</option>
                                <option value="tan">Tan</option>
                                <option value="teal">Teal</option>
                                <option value="turquoise">Turquoise</option>
                                <option value="violet">Violet</option>
                                <option value="white">White</option>
                                <option value="yellow">Yellow</option>
                            </select>
                        </div>
                        <div id="nums" style="grid-row:2 / 3;grid-column:2 / 3;color:#f26722;display:grid;align-items:center;grid-template-rows:1fr 3fr;padding:8px;">
                            <label id="numPicker" style="grid-row:1 / 2;">Pick any number(s).</label>
                            <div style="grid-row:2 / 3;display:inline-grid;grid-template-columns:repeat(5,1fr 1fr 15px);align-items:center;grid-template-rows:repeat(2, 1fr);font-size:1.5em;">
                                <input type="checkbox" name="genPassNum" id="numb0" style="grid-row:1 / 2;grid-column:1 / 2;justify-self:center;" />
                                <label for="numb0" style="grid-row:1 / 2;grid-column:2 / 3;">0</label>
                                <input type="checkbox" name="genPassNum" id="numb1" style="grid-row:1 / 2;grid-column:4 / 5;justify-self:center;" />
                                <label for="numb1" style="grid-row:1 / 2;grid-column:5 / 6;">1</label>
                                <input type="checkbox" name="genPassNum" id="numb2" style="grid-row:1 / 2;grid-column:7 / 8;justify-self:center;" />
                                <label for="numb2" style="grid-row:1 / 2;grid-column:8 / 9;">2</label>
                                <input type="checkbox" name="genPassNum" id="numb3" style="grid-row:1 / 2;grid-column:10 / 11;justify-self:center;" />
                                <label for="numb3" style="grid-row:1 / 2;grid-column:11 / 12;">3</label>
                                <input type="checkbox" name="genPassNum" id="numb4" style="grid-row:1 / 2;grid-column:13 / 14;justify-self:center;" />
                                <label for="numb4" style="grid-row:1 / 2;grid-column:14 / 15;">4</label>
                                <input type="checkbox" name="genPassNum" id="numb5" style="grid-row:2 / 3;grid-column:1 / 2;justify-self:center;" />
                                <label for="numb5" style="grid-row:2 / 3;grid-column:2 / 3;">5</label>
                                <input type="checkbox" name="genPassNum" id="numb6" style="grid-row:2 / 3;grid-column:4 / 5;justify-self:center;" />
                                <label for="numb6" style="grid-row:2 / 3;grid-column:5 / 6;">6</label>
                                <input type="checkbox" name="genPassNum" id="numb7" style="grid-row:2 / 3;grid-column:7 / 8;justify-self:center;" />
                                <label for="numb7" style="grid-row:2 / 3;grid-column:8 / 9;">7</label>
                                <input type="checkbox" name="genPassNum" id="numb8" style="grid-row:2 / 3;grid-column:10 / 11;justify-self:center;" />
                                <label for="numb8" style="grid-row:2 / 3;grid-column:11 / 12;">8</label>
                                <input type="checkbox" name="genPassNum" id="numb9" style="grid-row:2 / 3;grid-column:13 / 14;justify-self:center;" />
                                <label for="numb9" style="grid-row:2 / 3;grid-column:14 / 15;">9</label>
                            </div>
                        </div>
                        <div id="anims" style="grid-row:3 / 4;grid-column:2 / 3;display:grid;padding:8px;align-items:center;grid-template-rows:1fr 1fr;color:#f26722;">
                            <label id="animal" style="grid-row:1 / 2;">Pick an animal:</label>
                            <select name="animals" id="animList" style="grid-row:2 / 3;border:1px solid #f26722;color:#f26722;padding:5px;border-radius:10px;font-size:16px;">
                                <option value="" disabled="disabled" selected="selected" style="color:#f26722;">Select an animal</option>
                                <option value="aardvark">Aardvark</option>
                                <option value="alligator">Alligator</option>
                                <option value="alpaca">Alpaca</option>
                                <option value="anteater">Anteater</option>
                                <option value="antelope">Antelope</option>
                                <option value="badger">Badger</option>
                                <option value="bat">Bat</option>
                                <option value="bear">Bear</option>
                                <option value="beaver">Beaver</option>
                                <option value="bird">Bird</option>
                                <option value="bobcat">Bobcat</option>
                                <option value="buffallo">Buffalo</option>
                                <option value="bull">Bull</option>
                                <option value="camel">Camel</option>
                                <option value="cat">Cat</option>
                                <option value="chameleon">Chameleon</option>
                                <option value="cheetah">Cheetah</option>
                                <option value="cougar">Cougar</option>
                                <option value="cow">Cow</option>
                                <option value="coyote">Coyote</option>
                                <option value="crab">Crab</option>
                                <option value="chicken">Chicken</option>
                                <option value="chipmunk">Chipmunk</option>
                                <option value="crocodile">Crocodile</option>
                                <option value="deer">Deer</option>
                                <option value="dog">Dog</option>
                                <option value="donkey">Donkey</option>
                                <option value="Duck">Duck</option>
                                <option value="eagle">Eagle</option>
                                <option value="eel">Eel</option>
                                <option value="elephant">Elephant</option>
                                <option value="elk">Elk</option>
                                <option value="emu">Emu</option>
                                <option value="falcon">Falcon</option>
                                <option value="ferret">Ferret</option>
                                <option value="fish">Fish</option>
                                <option value="fox">Fox</option>
                                <option value="frog">Frog</option>
                                <option value="giraffe">Giraffe</option>
                                <option value="goat">Goat</option>
                                <option value="goose">Goose</option>
                                <option value="gopher">Gopher</option>
                                <option value="gorilla">Gorilla</option>
                                <option value="hamster">Hamster</option>
                                <option value="hawk">Hawk</option>
                                <option value="hedgehog">Hedgehog</option>
                                <option value="hippopotamus">Hippopotamus</option>
                                <option value="horse">Horse</option>
                                <option value="hyena">Hyena</option>
                                <option value="ibex">Ibex</option>
                                <option value="ibis">Ibis</option>
                                <option value="impala">Impala</option>
                                <option value="jackal">Jackal</option>
                                <option value="jaguar">Jaguar</option>
                                <option value="kangaroo">Kangaroo</option>
                                <option value="koala">Koala</option>
                                <option value="leopard">Leopard</option>
                                <option value="leech">Leech</option>
                                <option value="lion">Lion</option>
                                <option value="lizard">Lizard</option>
                                <option value="llama">Llama</option>
                                <option value="lobster">Lobster</option>
                                <option value="lynx">Lynx</option>
                                <option value="marten">Marten</option>
                                <option value="mink">Mink</option>
                                <option value="mole">Mole</option>
                                <option value="mongoose">Mongoose</option>
                                <option value="monkey">Monkey</option>
                                <option value="moose">Moose</option>
                                <option value="muskrat">Muskrat</option>
                                <option value="octopus">Octopus</option>
                                <option value="ostrich">Ostrich</option>
                                <option value="otter">Otter</option>
                                <option value="owl">Owl</option>
                                <option value="oyster">Oyster</option>
                                <option value="panda">Panda</option>
                                <option value="panther">Panther</option>
                                <option value="peacock">Peacock</option>
                                <option value="pelican">Pelican</option>
                                <option value="penguin">Penguin</option>
                                <option value="pig">Pig</option>
                                <option value="porcupine">Porcupine</option>
                                <option value="puma">Puma</option>
                                <option value="rabbit">Rabbit</option>
                                <option value="raccoon">Raccoon</option>
                                <option value="rhinoceros">Rhinoceros</option>
                                <option value="seal">Seal</option>
                                <option value="shark">Shark</option>
                                <option value="sheep">Sheep</option>
                                <option value="snake">Snake</option>
                                <option value="squirrel">Squirrel</option>
                                <option value="swan">Swan</option>
                                <option value="tiger">Tiger</option>
                                <option value="turtle">Turtle</option>
                                <option value="wolf">Wolf</option>
                                <option value="wolverine">Wolverine</option>
                                <option value="woodpecker">Woodpecker</option>
                                <option value="whale">Whale</option>
                                <option value="yak">Yak</option>
                                <option value="zebra">Zebra</option>
                            </select>
                        </div>
                        <div style="grid-row:4 / 5;grid-column:2 / 3;display:grid;grid-template-columns:1fr 40px;">
                            <label id="generatedPass" style="grid-column:1 / 2;width:90%"></label>
                            <input id="copyBtn" type="button" onclick="createAcc('', this.id)" style="grid-column:2 / 3;padding:0;margin:0;background-color:white;border:1px solid white;justify-self:end;display:none;color:#f26722;" value="&#xf0c5;" title="Back and Load" />
                        </div>
                        <div style="display:grid;grid-template-columns:repeat(4, 1fr);grid-row:5 / 6;grid-column:2 / 3;">
                            <input type="button" value="Generate" onclick="generatePassword()" style="grid-row:1 / 2;grid-column:4 / 5;color:white;background-color:#f26722;border:1px solid #f26722;border-radius:10px;font-size:20px;" />
                            <input id="backGen" type="button" value="< Back" onclick="createAcc('', this.id)" style="justify-self:start;grid-row:1 / 2;grid-column:1 / 2;text-decoration:underline;color:blue;background-color:white;border:1px solid white;" />
                        </div>
                    </div>
                    <div id="loadRequest" style="display:none;grid-template-rows:89% 9%;grid-template-columns:5% 1fr 5%;row-gap:5px;overflow:hidden;height:100%;">
                        <div style="grid-row:1 / 2;grid-column:2 / 3;overflow:auto;height:100%;text-align:center;">
                            <table id="reqTable" style="border-collapse:collapse;width:100%;overflow-wrap:normal;font-size:18px;">
                                <tr style="background-color:rgba(242, 103, 34, 0.5);">
                                    <th style="padding:5px;"></th>
                                    <th style="padding:5px;">Ticket No</th>
                                    <th style="padding:5px;">Date</th>
                                    <th style="padding:5px;">Application Type</th>
                                    <th style="padding:5px;">Contact Name</th>
                                    <th style="padding:5px;">Company Name</th>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn1" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">1</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn2" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">2</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn4" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">4</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn8" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">8</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn10" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">10</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn15" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">15</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                                <tr style="background-color:white;">
                                    <td style="padding:5px;"><input id="tn19" type="checkbox" name="req" onchange="requests()" style="margin:auto;" /></td>
                                    <td style="padding:5px;">19</td>
                                    <td style="padding:5px;">1/19/2022</td>
                                    <td style="padding:5px;">Website</td>
                                    <td style="padding:5px;">Tyler Huffman</td>
                                    <td style="padding:5px;">Buncombe County Schools</td>
                                </tr>
                            </table>
                        </div>
                        <div style="grid-row:2 / 3;grid-column:1 / 4;display:grid;grid-template-columns:5fr 125px 45px 125px 45px 125px 1fr;width:100%;">
                            <input type="button" id="delRequest" value="Delete" onclick="deleteReq()" style="cursor:pointer;grid-column:2 / 3;background-color:#f26722;color:white;border-radius:15px;border:1px solid #f26722;" />
                            <input type="button" id="saveToRequest" value="Save To" disabled="disabled" style="grid-column:4 / 5;border-radius:15px;" />
                            <input type="button" id="saveAsNew" value="Save As New" style="cursor:pointer;grid-column:6 / 7;background-color:#f26722;color:white;border-radius:15px;border:1px solid #f26722;" />
                        </div>
                    </div>
                    <div id="saveExRes" style="display:none;grid-template-rows:45% repeat(3, 1fr);grid-template-columns:20% 1fr 1fr 1fr 20%;color:#f26722;row-gap:25px;">
                        <label id="ruSure" style="grid-row:2 / 3;grid-column:2 / 5;color:#f26722;font-size:20px;text-align:center;">Are you sure that you want to exit?</label>
                        <input type="button" id="yes_exit" onclick="exitBtn()" value="Yes" style="grid-row:3 / 4;grid-column:3 / 4;color:white;background-color:#f26722;font-size:16px;padding:10px;border-radius:15px;border:1px solid #f26722;" />
                        <input type="button" id="no_exit" onclick="closePopup()" value="No" style="grid-row:4 / 5;grid-column:3 / 4;color:white;background-color:#f26722;font-size:16px;padding:10px;border-radius:15px;border:1px solid #f26722;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="myMsgBox" id="popupMsgBox">
            <label id="msgBoxLbl" style="font-size:20px;color:#f26722;grid-row:1 / 2;grid-column:1 / 2;align-self:center;justify-self:center"></label>
        </div>
        <div id="buttonInfo" style="display:grid;position:fixed;top:79%;width:100%;grid-template-rows:45px;grid-template-columns: 3fr 1fr 75px 1fr 75px 1fr 75px 1fr 1fr;">
            <input id="prevButton" type="button" onclick="previousButton()" value="Previous" disabled="disabled" style="grid-column:2 / 3;border-radius:15px;"/>
            <asp:Button ID="saveBtn" runat="server" OnClientClick="saveButton(this.id); return false;" Text="Save" style="grid-column:4 / 5;border-radius:15px;" />
            <asp:Button ID="saveExitBtn" runat="server" OnClientClick="saveButton(this.id); return false;" style="grid-column:6 / 7;border-radius:15px;" Text="Save and Exit" />
            <input id="nextBtn" type="button" onclick="nextButton()" style="grid-column:8 / 9;border-radius:15px;" value="Next" />
        </div>
        <div id="footer" class="outer"></div>
    </form>
    <script>
        /** Possible rework can be done here to have the login-create account process work more on the server side than on the client side,
         * see the notes on the NewRequest.aspz.cs for more information */
        var isDropped = false;
        var prevLoc = '';
        var saveBtnType = "";
        document.getElementById("ddArrow").innerText = "\u25BC";
        var dumInd = [2, 6, 16, 19, 22, 26, 31, 35];
        var inValues = [0, 0, 0];
        for (var i = 0; i < 3; i++) {
            while (true) {
                var nextI = Math.floor(Math.random() * dumInd.length);
                var isAdded = false;
                for (var j = 0; j < i; j++)
                    if (inValues[j] == dumInd[nextI]) {
                        isAdded = true;
                        break;
                    }
                if (!isAdded) {
                    inValues[i] = dumInd[nextI];
                    break;
                }
            }
        }
        var colorIs = [["rgb(176, 30, 0)", "rgb(234, 143, 131)"], ["rgb(0, 107, 100)", "rgb(174, 204, 203)"], ["rgb(28, 115, 76)", "rgb(200, 224, 171)"], ["rgb(246, 207, 87)", "rgb(255, 252, 180)"],
            ["rgb(245, 128, 31)", "rgb(255, 187, 124)"], ["rgb(73, 15, 82)", "rgb(176, 159, 202)"], ["rgb(0, 0, 0)", "rgb(175, 175, 175)"], ["rgb(98, 60, 31)", "rgb(194, 164, 135)"],
            ["rgb(223, 136, 183)", "rgb(231, 209, 221)"], ["rgb(59, 117, 119)", "rgb(123, 194, 188)"], ["rgb(213, 50, 25)", "rgb(255, 145, 100)"], ["rgb(84, 62, 122)", "rgb(134, 134, 175)"],
            ["rgb(11, 168, 230)", "rgb(211, 225, 235)"], ["rgb(98, 98, 61)", "rgb(194, 194, 154)"]];
        var randIBack = randI(0, colorIs.length);
        document.getElementById("accPic").style.backgroundColor = colorIs[randIBack][0];
        document.getElementById("accHead").style.backgroundColor = colorIs[randIBack][1];
        document.getElementById("accBody").style.backgroundColor = colorIs[randIBack][1];
        $(window).on("resize", function () {
            resizeDetection();
        });
        $(window).on("load", function () {
            resizeDetection();
            loadDummyQuest(1);
        });
        function dropdownAcc(id) {
            var idCheck = (id == "outlineAccPic" || id == "ddArrow" || id == "myAcc" || id == "accPic" || id == "accHead" || id == "accBody" || id == "userDD" ||
                id == "siUserLbl" || id == "signInUser" || id == "siUIDLbl" || id == "signInUID" || id == "siTicketLbl" || id == "signInTicket" || id == "siKeyLbl" ||
                id == "signInKey" || id == "signInBar" || id == "signInAcc" || id == "signInStat" || id == "signInLoad" || id == "signInAcc" || id == "signInStat");
            document.getElementById("myAcc").style.display = (idCheck ? "grid" : "none");
            if (idCheck) {
                document.getElementById("myAcc").style.top = document.getElementById("header").clientHeight + "px";
                document.getElementById("myAcc").style.left = (0.9 * window.innerWidth - 270) + "px";
            }
            document.getElementById("outlineAccPic").style.backgroundColor = (idCheck ? "#f26722" : "transparent");
            document.getElementById("ddArrow").style.color = (idCheck ? "white" : "#f26722");
            document.getElementById("ddArrow").innerText = (idCheck ? "\u25B2" : "\u25BC");
        }
        function resizeDetection() {
            var minWidth = 500;
            var widths = [];
            for (var i = 0; i < 5; i++) {
                widths[i] = $("#headerText" + (i + 1)).width();
                if (minWidth > $("#header" + (i + 1)).width())
                    minWidth = $("#header" + (i + 1)).width();
            }
            if (minWidth > 270) {
                $(".headerTab").css({ 'margin-top': '70px' });
                $(".defHeaderTab").css({ 'margin-top': '76px' });
                for (var i = 0; i < 5; i++) {
                    if ($("#headerText" + (i + 1)).hasClass("offsetDefHeaderText")) {
                        $("#headerText" + (i + 1)).removeClass("offsetDefHeaderText");
                        $("#headerText" + (i + 1)).addClass("defHeaderText");
                    } else if ($("#headerText" + (i + 1)).hasClass("offsetHeaderText")) {
                        $("#headerText" + (i + 1)).removeClass("offsetHeaderText");
                        $("#headerText" + (i + 1)).addClass("headerText");
                    }
                }
            } else {
                for (var i = 0; i < 5; i++) {
                    if (widths[i] > 220) {
                        if ($("#headerText" + (i + 1)).hasClass("defHeaderText")) {
                            $("#headerText" + (i + 1)).removeClass("defHeaderText");
                            $("#headerText" + (i + 1)).addClass("offsetDefHeaderText");
                        } else if ($("#headerText" + (i + 1)).hasClass("headerText")) {
                            $("#headerText" + (i + 1)).removeClass("headerText");
                            $("#headerText" + (i + 1)).addClass("offsetHeaderText");
                        }
                    }
                }
                $(".headerTab").css({ 'margin-top': '40px' });
                $(".defHeaderTab").css({ 'margin-top': '46px' });
            }
            if (document.getElementById("question16").style.display == "grid") {
                if ($("#q16all_tA").width() > 335)
                    $("#q16layout").css({ 'grid-row': '2 / 62' });
                else
                    $("#q16layout").css({ 'grid-row': '2 / 74' });
            }
        }
        function dragStartTwo(e) {
            var parent = e.target.parentNode.id;
            e.dataTransfer.setData('text/plain', e.target.id + '\n' + parent);
            setTimeout(() => {
                e.target.classList.add('hide');
            }, 0);
        }
        function dragEnterTwo(e) {
            e.preventDefault();
            if (e.target.id.includes("divL"))
                e.target.classList.add('drag-over');
            else if (e.target.id.includes("drag")) {
                var parent = e.target.parentNode.id;
                if (parent.includes("divL"))
                    document.getElementById(parent).classList.add('drag-over');
            }
        }
        function dragOverTwo(e) {
            e.preventDefault();
            if (e.target.id.includes("divL"))
                e.target.classList.add('drag-over');
            else if (e.target.id.includes("drag")) {
                var parent = e.target.parentNode.id;
                if (parent.includes("divL"))
                    document.getElementById(parent).classList.add('drag-over');
            }
        }
        function dragLeaveTwo(e) {
            e.target.classList.remove('drag-over');
        }
        function dragEndTwo(e) {
            if (!isDropped) {
                document.getElementById("divR" + e.target.id.substr(4)).appendChild(e.target);
                e.target.classList.remove('hide');
            }
            isDropped = false;
        }
        function dropTwo(e) {
            var data = e.dataTransfer.getData('text/plain');
            const id = data.substr(0, data.indexOf('\n'));
            const parentID = data.substr(data.indexOf('\n') + 1);
            const draggable = document.getElementById(id);
            if (e.target.id.includes("divL")) {
                var nodes = e.target.childNodes;
                e.target.classList.remove('drag-over');
                if (nodes.length >= 2) {
                    if (parentID.includes("divL"))
                        document.getElementById(parentID).appendChild(nodes[1]);
                    else
                        document.getElementById("divR" + nodes[1].id.substr(4)).appendChild(nodes[1]);
                }
                e.target.appendChild(draggable);
                isDropped = true;
            } else if (e.target.id.includes("drag")) {
                var parentThisID = e.target.parentNode.id;
                document.getElementById(parentThisID).classList.remove('drag-over');
                if (parentID.includes("divL"))
                    document.getElementById(parentID).appendChild(e.target);
                else
                    document.getElementById("divR" + e.target.id.substr(4)).appendChild(e.target);
                document.getElementById(parentThisID).appendChild(draggable);
                isDropped = true;
            } else
                document.getElementById("divR" + draggable.id.substr(4)).appendChild(draggable);
            draggable.classList.remove('hide');
        }
        function dragStartThree(e) {
            var parent = e.target.parentNode.id;
            e.dataTransfer.setData('text/plain', e.target.id + '\n' + parent);
            setTimeout(() => {
                e.target.classList.add('hide');
            }, 0);
        }
        function dragEnterThree(e) {
            e.preventDefault();
            if (e.target.id.includes("divS"))
                e.target.classList.add('drag-over');
            else if (e.target.id.includes("drag")) {
                var parent = e.target.parentNode.id;
                if (parent.includes("divS"))
                    document.getElementById(parent).classList.add('drag-over');
            }
        }
        function dragOverThree(e) {
            e.preventDefault();
            if (e.target.id.includes("divS"))
                e.target.classList.add('drag-over');
            else if (e.target.id.includes("drag")) {
                var parent = e.target.parentNode.id;
                if (parent.includes("divS"))
                    document.getElementById(parent).classList.add('drag-over');
            }
        }
        function dragLeaveThree(e) {
            e.target.classList.remove('drag-over');
        }
        function dragEndThree(e) {
            if (!isDropped) {
                document.getElementById("div" + (e.target.id.substr(5, 1) == 'L' ? 'M' : 'E') + e.target.id.substr(6)).appendChild(e.target);
                e.target.classList.remove('hide');
            }
            isDropped = false;
        }
        function dropThree(e) {
            var data = e.dataTransfer.getData('text/plain');
            const id = data.substr(0, data.indexOf('\n'));
            const parentID = data.substr(data.indexOf('\n') + 1);
            const draggable = document.getElementById(id);
            if (e.target.id.includes("divS")) {
                var nodes = e.target.childNodes;
                e.target.classList.remove('drag-over');
                if (nodes.length >= 2) {
                    if (parentID.includes("divS"))
                        document.getElementById(parentID).appendChild(nodes[1]);
                    else
                        document.getElementById("div" + (nodes[1].id.substr(5, 1) == 'L' ? 'M' : 'E') + nodes[1].id.substr(6)).appendChild(nodes[1]);
                }
                e.target.appendChild(draggable);
                isDropped = true;
            } else if (e.target.id.includes("drag")) {
                var parentThisID = e.target.parentNode.id;
                document.getElementById(parentThisID).classList.remove('drag-over');
                if (parentID.includes("divS"))
                    document.getElementById(parentID).appendChild(e.target);
                else
                    document.getElementById("div" + (e.target.id.substr(5, 1) == 'L' ? 'M' : 'E') + e.target.id.substr(6)).appendChild(e.target);
                document.getElementById(parentThisID).appendChild(draggable);
                isDropped = true;
            } else
                document.getElementById("div" + (draggable.id.substr(5, 1) == 'L' ? 'M' : 'E') + draggable.id.substr(6)).appendChild(draggable);
            draggable.classList.remove('hide');
        }
        function enableTextBox(valueId) {
            if (valueId == "q9o_c")
                document.getElementById("q9o_tB").disabled = !document.getElementById("q9o_tB").disabled;
            else if (valueId == "q10o_c")
                document.getElementById("q10o_tB").disabled = !document.getElementById("q10o_tB").disabled;
            else if (valueId == "q20o_c")
                document.getElementById("q20o_tB").disabled = !document.getElementById("q20o_tB").disabled;
            else if (valueId == "q32o_c")
                document.getElementById("q32o_tB").disabled = !document.getElementById("q32o_tB").disabled;
            else if (valueId == "q34o_c")
                document.getElementById("q34o_tB").disabled = !document.getElementById("q34o_tB").disabled;
        }
        function previousButton() {
            for (var i = 2; i <= 41; i++)
                if (document.getElementById("question" + i).style.display == "grid") {
                    modifyProgress(i, 1);
                    break;
                }
        }
        function nextButton() {
            for (var i = 1; i < 41; i++)
                if (document.getElementById("question" + i).style.display == "grid") {
                    modifyProgress(i, 2);
                    break;
                }
        }
        function modifyProgress(i, direction) {
            var parts = [1, 9, 20, 28, 37];
            var nextI = 0;
            if (direction == 2)
                nextI = forwardflowchart(i);
            else if (direction == 1)
                nextI = backwardflowchart(i);
            document.getElementById("question" + i).style.display = "none";
            document.getElementById("question" + nextI).style.display = "grid";
            var prevI = i;
            i += (Math.abs(i - nextI) >= 2 ? Math.abs(nextI - i - 1) * Math.pow(-1, direction) : 0);
            var index = -1;
            for (var j = 1; j < parts.length; j++)
                if ((direction == 2 ? i : prevI) < parts[j]) {
                    index = j - 1;
                    break;
                }
            if ((direction == 2? i : prevI) == parts[index + ((direction + 1) % 2)] - ((direction + 1) % 2)) {
                document.getElementById("header" + (index + 2 * (direction - 1))).classList.remove("defHeaderTab");
                document.getElementById("header" + (index + 2 * (direction - 1))).classList.add("headerTab");
                document.getElementById("header" + (index + 1)).classList.remove("headerTab");
                document.getElementById("header" + (index + 1)).classList.add("defHeaderTab");
                document.getElementById("headerProg" + (index + direction)).style.display = direction == 2? "initial" : "none";
                document.getElementById("headerProg" + (index + direction - 1)).value = "" + (parts[index + direction - 1] - parts[index + direction - 2]);
                if (direction == 1)
                    index--;
            }
            document.getElementById("headerProg" + (index + 1)).value = (direction == 2 ? "" + (i - parts[index] + 1) : "" + (nextI - parts[index]));
            resizeDetection();
        }
        function forwardflowchart(curIndex) {
            if (curIndex == 5 || curIndex == 15 || curIndex == 18 || curIndex == 21 || curIndex == 25 || curIndex == 34) {
                return (curIndex + 1 == inValues[0] || curIndex + 1 == inValues[1] || curIndex + 1 == inValues[2] ? curIndex + 1 : curIndex + 2);
            } else if (curIndex == 1) {
                document.getElementById("prevButton").disabled = false;
                return (inValues[0] == 2 || inValues[1] == 2 || inValues[2] == 2 ? 2 : 3);
            } else if (curIndex == 3) {
                var selected = $('input[type=radio][name="q3"]:checked').attr('id');
                if (selected == "q3both_c")
                    document.getElementById("q5text").innerText = "Will the employees and/or customers have personal accounts to access this applications?";
                else if (selected == "q3cus_c") {
                    document.getElementById("q5text").innerText = "Will the customers have personal accounts to access this applications?";
                    return 5;
                } else if (selected == "q3nei_c")
                    return (inValues[0] == 6 || inValues[1] == 6 || inValues[2] == 6 ? 6 : 7);
                else
                    document.getElementById("q5text").innerText = "Will the employees have personal accounts to access this applications?";
            } else if (curIndex == 7) {
                var selected = $('input[type=radio][name="q7"]:checked').attr('id');
                if (selected == "q7No_c")
                    return 9;
            } else if (curIndex == 9) {
                var checked = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                var osTypes = ["q10Win", "q10Mac", "q10Lin", "q10Chr", "q10WinPhone", "q10ios", "q10and", "q10idk", "q10none", "q10o"];
                var indices = [2, 3, 4, 5, 0, 0, 0, 6, 7, 8];
                var isMore = 0;
                if (checked.length == 1 && checked[0] == "q9w_c")
                    return curIndex + 2;
                for (var i = 0; i < checked.length; i++)
                    if (checked[i] == "q9ma_c") {
                        for (var j = 0; j < 10; j++)
                            if (j > 3)
                                indices[j] = j - 2 + (4 * isMore);
                            else if (isMore == 0)
                                indices[j] = 0;
                        isMore++;
                    } else if (checked[i] == "q9da_c")
                        isMore++;
                for (var i = 0; i < indices.length; i++)
                    if (indices[i] != 0) {
                        document.getElementById(osTypes[i] + "_c").style.gridRow = "" + indices[i] + " / " + (indices[i] + 1);
                        document.getElementById(osTypes[i] + "_t").style.gridRow = "" + indices[i] + " / " + (indices[i] + 1);
                        document.getElementById(osTypes[i] + "_c").style.display = "grid";
                        document.getElementById(osTypes[i] + "_tA").style.display = "inline-block";
                        document.getElementById(osTypes[i] + "_tB").style.display = "inline-block";
                    } else {
                        document.getElementById(osTypes[i] + "_c").style.display = "none";
                        document.getElementById(osTypes[i] + "_tA").style.display = "none";
                        document.getElementById(osTypes[i] + "_tB").style.display = "none";
                    }
            } else if (curIndex == 10) {
                var checkedB = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < checkedB.length; i++)
                    if (checkedB[i] == "q9w_c")
                        return curIndex + 1;
                var checkedA = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var isIOS = false;
                for (var i = 0; i < checkedA.length; i++) {
                    if (checkedA[i] == "q10idk_c")
                        return curIndex + 2;
                    else if (checkedA[i] == "q10and_c")
                        return 13;
                    else if (checkedA[i] == "q10Mac_c" || checkedA[i] == "q10ios_c")
                        isIOS = true;
                }
                return (isIOS ? 14 : (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17));
            } else if (curIndex == 11) {
                var checkedB = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                if (checkedB.length == 1 && checkedB[0] == "q9w_c")
                    return (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17);
                var checkedA = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var oses = [false, false];
                for (var i = 0; i < checkedA.length; i++)
                    if (checkedA[i] == "q10idk_c")
                        return 12;
                    else if (checkedA[i] == "q10and_c")
                        oses[1] = true;
                    else if (checkedA[i] == "q10Mac_c" || checkedA[i] == "q10ios_c")
                        oses[0] = true;
                if (oses[1])
                    return 13;
                return (oses[0] ? 14 : (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17));
            } else if (curIndex == 12) {
                var selApp = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var isIOS = false;
                for (var i = 0; i < selApp.length; i++) {
                    if (selApp[i] == "q10Mac_c" || selApp[i] == "q10ios_c")
                        isIOS = true;
                    else if (selApp[i] == "q10and_c")
                        return 13;
                }
                return (isIOS ? 14 : (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17));
            } else if (curIndex == 13) {
                var selApp = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < selApp.length; i++) {
                    if (selApp[i] == "q10Mac_c" || selApp[i] == "q10ios_c")
                        return 14;
                }
                var selStore = $('input[type=radio][name="q14"]:checked').attr('id');
                return (selStore == "q14yes_c" ? 15 : (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17));
            } else if (curIndex == 14) {
                var q13Yes = $('input[type=radio][name="q13"]:checked').attr('id');
                if (q13Yes == "q13yes_c")
                    return 15;
                var checked = $('input[type=radio][name="q14"]:checked').attr('id');
                return (checked == "q14yes_c" ? 15 : (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16 ? 16 : 17));
            } else if (curIndex == 24) {
                var selRef = $('input[type=radio][name="q24"]:checked').attr('id');
                return (selRef == "q24yes_c" ? 25 : (inValues[0] == 26 || inValues[1] == 26 || inValues[2] == 26 ? 26 : 27));
            } else if (curIndex == 29) {
                var checked = $('input[type=checkbox][name="q28"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < checked.length; i++)
                    document.getElementById('fDrag' + (i % 2 == 0 ? 'L' : 'R') + Math.floor(i / 2 + 1)).innerText = document.getElementById(checked[i].substr(0, checked[i].length - 2) + "_tA").innerText;
                var count = checked.length;
                for (var i = 0; i < 12; i++)
                    if (document.getElementById("q29uFeat" + String.fromCharCode(65 + i)).value != "") {
                        document.getElementById('fDrag' + (count % 2 == 0 ? 'L' : 'R') + Math.floor(count / 2 + 1)).innerText = document.getElementById("q29uFeat" + String.fromCharCode(65 + i)).value;
                        count++;
                    }
                for (var i = count; i < 28; i++)
                    document.getElementById('fDrag' + (i % 2 == 0 ? 'L' : 'R') + Math.floor(i / 2 + 1)).innerText = "";
            } else if (curIndex == 30 || curIndex == 31) {
                var selFeats = $('input[type=checkbox][name="q28"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < selFeats.length; i++)
                    if (selFeats[i] == "q28featScan_c")
                        return (inValues[0] == 31 || inValues[1] == 31 || inValues[2] == 31 ? (curIndex == 31 ? 32 : 31) : 32);
                return (inValues[0] == 31 || inValues[1] == 31 || inValues[2] == 31 ? (curIndex == 31 ? 33 : 31) : 33);
            }
            return curIndex + 1;
        }
        function backwardflowchart(curIndex) {
            if (curIndex == 20 || curIndex == 23 || curIndex == 32 || curIndex == 36) {
                return ((curIndex == inValues[0] + 1 || curIndex == inValues[1] + 1 || curIndex == inValues[2] + 1) ? curIndex - 1 : curIndex - 2);
            } else if (curIndex == 2 || curIndex == 3) {
                if ((inValues[0] == 2 || inValues[1] == 2 || inValues[2] == 2) && curIndex == 2)
                    document.getElementById("prevButton").disabled = true;
                else if (inValues[0] != 2 && inValues[1] != 2 && inValues[2] != 2 && curIndex == 3)
                    document.getElementById("prevButton").disabled = true;
                return (inValues[0] == 2 || inValues[1] == 2 || inValues[2] == 2  && curIndex == 3 ? 2 : 1);
            } else if (curIndex == 7 || curIndex == 6) {
                var selected = $('input[type=radio][name="q3"]:checked').attr('id');
                if (selected == "q3nei_c")
                    return 3;
                return ((inValues[0] == 6 || inValues[1] == 6 || inValues[2] == 6) && curIndex != 6 ? 6 : 5);
            } else if (curIndex == 5) {
                var selected = $('input[type=radio][name="q3"]:checked').attr('id');
                if (selected == "q3cus_c")
                    return 3;
            } else if (curIndex == 9) {
                var selected = $('input[type=radio][name="q7"]:checked').attr('id');
                if (selected == "q7No_c")
                    return 7;
            } else if (curIndex == 11 || curIndex == 12) {
                var selApp = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                var isWeb = false;
                for (var i = 0; i < selApp.length; i++)
                    if (selApp[i] == "q9w_c") {
                        isWeb = true;
                        break;
                    }
                if (isWeb && curIndex == 12)
                    return 11;
                else if (isWeb && selApp.length == 1 && curIndex == 11)
                    return 9;
                return 10;
            } else if (curIndex == 15) {
                var selOS = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < selOS.length; i++) {
                    if (selOS[i] == "q10Mac_c" || selOS[i] == "q10ios_c")
                        return 14;
                }
                return 13;
            } else if (curIndex == 14) {
                var selOS = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var oses = [false, false];
                for (var i = 0; i < selOS.length; i++) {
                    if (selOS[i] == "q10and_c")
                        oses[0] = true;
                    else if (selOS[i] == "q10idk_c")
                        oses[1] = true;
                }
                var selApp = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                var isWeb = false;
                for (var i = 0; i < selApp.length; i++)
                    if (selApp[i] == "q9w_c") {
                        isWeb = true;
                        break;
                    }
                if (!oses[0] && !oses[1] && isWeb)
                    return 11;
                else if (oses[1] && !oses[0])
                    return 12;
                else if (!oses[0] && !oses[1] && !isWeb)
                    return 10;
            } else if (curIndex == 13) {
                var selOS = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var isUnk = false;
                for (var i = 0; i < selOS.length; i++)
                    if (selOS[i] == "q10idk_c") {
                        isUnk = true;
                        break;
                    }
                var selApp = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                var isWeb = false;
                for (var i = 0; i < selApp.length; i++)
                    if (selApp[i] == "q9w_c") {
                        isWeb = true;
                        break;
                    }
                if (!isUnk && isWeb)
                    return 11;
                else if (!isUnk && !isWeb)
                    return 10;
            } else if (curIndex == 17 || curIndex == 16) {
                if (curIndex == 17 && (inValues[0] == 16 || inValues[1] == 16 || inValues[2] == 16))
                    return 16;
                var selApp = $('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') }).get();
                if (selApp.length == 1 && selApp[0] == "q9w_c")
                    return 11;
                var selOS = $('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') }).get();
                var oses = [false, false, false];
                for (var i = 0; i < selOS.length; i++) {
                    if (selOS[i] == "q10Mac_c" || selOS[i] == "q10ios_c")
                        oses[0] = true;
                    else if (selOS[i] == "q10and_c")
                        oses[1] = true;
                    else if (selOS[i] == "q10idk_c")
                        oses[2] = true;
                }
                if (oses[2] && !oses[1] && !oses[0])
                    return 12;
                var q14Yes = $('input[type=radio][name="q14"]:checked').attr('id');
                var q13Yes = $('input[type=radio][name="q13"]:checked').attr('id');
                if ((oses[0] && q14Yes == "q14yes_c") || (oses[1] && q13Yes == "q13yes_c"))
                    return 15;
                else if (oses[0])
                    return 14;
                else if (oses[1])
                    return 13;
                var isWeb = false;
                for (var i = 0; i < selApp.length; i++)
                    if (selApp[i] == "q9w_c") {
                        isWeb = true;
                        break;
                    }
                if (isWeb)
                    return 11;
                return 10;
            } else if (curIndex == 26 || curIndex == 27) {
                var selRef = $('input[type=radio][name="q24"]:checked').attr('id');
                if (selRef == "q24yes_c" && curIndex == 26)
                    return 25;
                return (inValues[0] == 26 || inValues[1] == 26 || inValues[2] == 26 && curIndex == 27 ? 26 : (selRef == "q24yes_c" ? 25 : 24));
            } else if (curIndex == 33) {
                var selFeats = $('input[type=checkbox][name="q28"]:checked').map(function () { return $(this).attr('id') }).get();
                for (var i = 0; i < selFeats.length; i++)
                    if (selFeats[i] == "q28featScan_c")
                        return 32;
                return (inValues[0] == 31 || inValues[1] == 31 || inValues[2] == 31 ? 31 : 30);
            }
            return curIndex - 1;
        }
        function loadDummyQuest() {
            var questTypes = randomizeArray([0, 1, 2, 3, 4], 24);
            for (var i = 0; i < 3; i++) {
                if (questTypes[i] == 0)
                    oddManOut(inValues[i]);
                else if (questTypes[i] == 1)
                    mathProblem(inValues[i]);
                else if (questTypes[i] == 2)
                    analogy(inValues[i]);
                else if (questTypes[i] == 3)
                    puzzle(inValues[i]);
                else
                    missingWord(inValues[i]);
            }
        }
        function oddManOut(questionI) {
            var options = [["Dog", "Cat", "Bird", "Battery"], ["Hamburger", "Steak", "Tacos", "Airplane"], ["Car", "Truck", "SUV", "Cow"], ["North", "West", "East", "Grass"], ["Pants", "Skirt", "Socks", "Brick"]];
            document.getElementById("question" + questionI).innerHTML = buildHTML("Please pick the option that doesn't match the others.", [], questionI, options[randI(0, options.length)]);
        }
        function mathProblem(questionI) {
            var mathy = [[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], ["+", "-", "x"]];
            var x = randArr(mathy[0]);
            var y = randArr(mathy[1]);
            var operator = randArr([0, 1, 2]);
            var min = (operator == 2 ? 0 : -10);
            var max = (operator == 2 ? 100 : 20);
            var array = [-11, -11, -11];
            var ans = (operator == 2 ? x * y : (operator == 1 ? x - y : x + y));
            for (var i = 0; i < 3; i++) {
                var next = randI(min, max);
                while (next == ans || array[0] == next || array[1] == next || array[2] == next)
                    next = randI(min, max);
                array[i] = next;
            }
            document.getElementById("question" + questionI).innerHTML = buildHTML("Please calculate the following basic math equation.", [x, mathy[2][operator], y, "=", "?"], questionI, [array[0], array[1], array[2], ans]);
        }
        function analogy(questionI) {
            var analogies = [["pig is to swine as dog is to ", "male", "flowers", "strawberries", "canine"], ["Albert Einstein is to scientist as Martin Luther King Jr. is to ", "classy", "old", "book", "civil rights leader"],
                ["Apple is to iPhone as Google is to ", "big", "brownies", "dog", "Chrome"], ["key is to door as password is to ", "worm", "yummy", "line", "email"], ["cookies is to yummy as sunrise is to ", "necklace", "mountains", "Jackie Chan", "beautiful"]];
            var i = randI(0, analogies.length);
            document.getElementById("question" + questionI).innerHTML = buildHTML("Please complete the following analogy:", [analogies[i][0]], questionI, [analogies[i][1], analogies[i][2], analogies[i][3], analogies[i][4]]);
        }
        function missingWord(questionI) {
            var phrases = [["\"Uh, what's up, _________?\" Bugs Bunny", "Computer", "Blue", "Sky", "Doc"], ["\"____________ is like a box of chocolates.\" Forrest Gump", "Kangaroos", "Bowties", "Nuts", "Life"], ["\"I ______, therefore I am.\" Rene Descartes", "Shoe", "Window", "Tree", "Think"],
                ["...'Til ________ do us part...", "Bath", "Concrete", "Kite", "Death"], ["\"When the going gets tough, the _________ get going.\" Joe Kennedy", "Earrings", "Television", "Radiator", "Tough"],
                ["\"That’s one small step for a man, one giant leap for ____________.\" Neil Armstrong", "Eyebrows", "Sunglasses", "Aliens", "Mankind"], ["\"Let ____________ ring from the...\" Martin Luther King Jr.", "Sausage", "Skyscrapers", "Bounty", "Freedom"]];
            var i = randI(0, phrases.length);
            document.getElementById("question" + questionI).innerHTML = buildHTML("Please fill in the missing word in the following phase:", [phrases[i][0].substr(0, phrases[i][0].lastIndexOf('"') + 1), phrases[i][0].substr(phrases[i][0].lastIndexOf('"') + 2)], questionI, [phrases[i][1], phrases[i][2], phrases[i][3], phrases[i][4]]);
        }
        function buildHTML(question, middle, questionI, options) {
            var optionList = "<label id=\"q" + questionI + "text\" style=\"grid-row:1 / 2;grid-column:2 / 6;\">" + question + "</label>";
            var valueNums = ["first", "second", "third", "fourth"];
            if (middle.length == 1)
                optionList = optionList + "<div id=\"q" + questionI + "math\" style=\"grid-row:2 / 3;grid-column:2 / 6;grid-template-columns:1fr 2fr 1fr;\"><label style=\"grid-column:2 / 3;\">" + middle[0] + "</label></div>";
            else if (middle.length == 2)
                optionList = optionList + "<div id=\"q" + questionI + "math\" style=\"grid-row:2 / 3;grid-column:2 / 6;grid-template-columns:1fr 3fr 1fr 1fr;\"><label style=\"grid-column:2 / 3;text-decoration:bold;padding-right:30px;\">" + middle[0] + "</label>" +
                    "<label style=\"grid-column:3 / 4;font-size:20px;\">" + middle[1] + "</label></div > ";
            else if (middle.length > 0) {
                optionList = optionList + "<div id=\"q" + questionI + "math\" style=\"grid-row:2 / 3;grid-column:2 / 6;grid-template-columns:1fr repeat(5, 30px) 2fr;\">"
                for (var i = 0; i < middle.length; i++)
                    optionList = optionList + "<label style=\"grid-column:" + (i + 2) + " / " + (i + 3) + ";\">" + middle[i] + "<\label>";
                optionList = optionList + "</div>";
            }
            var row = (middle.length > 0 ? 3 : 2);
            var ranJs = randomizeArray([0, 1, 2, 3], 24);
            for (var i = 0; i < 4; i++)
                optionList = optionList + "<input type=\"radio\" value=\"" + valueNums[i] + "value\" name=\"q" + questionI + "\" id=\"q" + questionI + "_" + i + "_c\" style=\"grid-row:" + (i + row) + " / " + (i + row + 1) +
                    ";grid-column:3 / 4;\" /><div style=\"grid-row:" + (i + row) + " / " + (i + row + 1) + ";grid-column:4 / 6;\"><label id=\"q" + questionI + "_" + i + "_tA\" for=\"q" + questionI + "_" + i + "_c\" style=\"display:inline-block;\">" +
                    options[ranJs[i]] + "</label></div>";
            return optionList;
        }
        function randomizeArray(array, times) {
            for (var j = 0; j < times; j++) {
                var a = randI(0, array.length);
                var b = randI(0, array.length);
                var temp = array[a];
                array[a] = array[b];
                array[b] = temp;
            }
            return array;
        }
        function puzzle(questionI) {
            var blankPuzzle = ["<div style=\"grid-column:2 / 6;display:grid;",
                "<div id=\"partialTL1\" class=\"partial_puzzle_TLC\" style=\"grid-row:",
                "<div id=\"partialT1\" class=\"partial_puzzle_T\" style=\"grid-row:",
                "<div id=\"partialT2\" class=\"partial_puzzle_T\" style=\"grid-row:",
                "<div id=\"partialT3\" class=\"partial_puzzle_T\" style=\"grid-row:",
                "<div id=\"partialTR1\" class=\"partial_puzzle_TRC\" style=\"grid-row:",
                "<div id=\"partialL1\" class=\"partial_puzzle_L\" style=\"grid-row:",
                "<div id=\"pieceA1\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceA2\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceA3\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"partialR1\" class=\"partial_puzzle_R\" style=\"grid-row:",
                "<div id=\"partialL2\" class=\"partial_puzzle_L\" style=\"grid-row:",
                "<div id=\"pieceB1\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceB2\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceB3\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"partialR2\" class=\"partial_puzzle_R\" style=\"grid-row:",
                "<div id=\"partialL3\" class=\"partial_puzzle_L\" style=\"grid-row:",
                "<div id=\"pieceC1\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceC2\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"pieceC3\" class=\"puzzle\" style=\"grid-row:",
                "<div id=\"partialR3\" class=\"partial_puzzle_R\" style=\"grid-row:",
                "<div id=\"partialBL1\" class=\"partial_puzzle_BLC\" style=\"grid-row:",
                "<div id=\"partialB1\" class=\"partial_puzzle_B\" style=\"grid-row:",
                "<div id=\"partialB2\" class=\"partial_puzzle_B\" style=\"grid-row:",
                "<div id=\"partialB3\" class=\"partial_puzzle_B\" style=\"grid-row:",
                "<div id=\"partialBR1\" class=\"partial_puzzle_BRC\" style=\"grid-row:"];
            var ids = ["partialTL1", "partialT1", "partialT2", "partialT3", "partialTR1", "partialL1", "pieceA1", "pieceA2", "pieceA3", "partialR1", "partialL2", "pieceB1",
                "pieceB2", "pieceB3", "partialR2", "partialL3", "pieceC1", "pieceC2", "pieceC3", "partialR3", "partialBL1", "partialB1", "partialB2", "partialB3", "partialBR1"];
            // var puzzle = [TL1 = [R, B], T1 = [R, B, L], T2 = [R, B, L], T3 = [R, B, L], TR1 = [B, L],
            //     L1 = [T, R, B], A1 = [T, R, B, L], A2 = [T, B, R, L], A3 = [T, R, B, L], R1 = [T, B, L],
            //     L2 = [T, R, L], B1 = [T, R, B, L], B2 = [T, B, R, L], B3 = [T, R, B, L], R2 = [T, B, L],
            //     L3 = [T, B, L], C1 = [T, R, B, L], C2 = [T, R, B, L], C3 = [T, R, B, L], R3 = [T, B, L],
            //     BL1 = [T, R], B1 = [T, R, L], B2 = [T, R, L], B3 = [T, R, L], BR1 = [T, L]];
            var puzzle = [[0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0],
                [0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0],
                [0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0],
                [0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0],
                [0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0]];
            var puzzleDirs = [[1, 2], [1, 2, 3], [1, 2, 3], [1, 2, 3], [2, 3],
                [0, 1, 2], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 2, 3],
                [0, 1, 2], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 2, 3],
                [0, 1, 2], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 2, 3],
                [0, 1], [0, 1, 3], [0, 1, 3], [0, 1, 3], [0, 3]];
            var puzzleEqu = [[[0, -4], [0, 29], [0, -19], [0, 29]], [[-22, 51], [0, 61], [-22, 51], [0, 76]], [[-22, 83], [0, 29], [-22, 98], [0, 29]], [[-22, 51], [0, -4], [-22, 51], [0, -19]]];
            var partials = [[[[[-1, 31]], [[-1, 46]]], [[[31, -1], [9, -1]], [[46, -1], [24, -1]]]],
                [[[[-1, 61]], [[-1, 76]]], [[[31, 29], [9, 29]], [[46, 29], [24, 29]]], [[[-1, -4], [-23, -4], [-45, -4]], [[-1, -19], [-23, -19], [-45, -19]]]],
                [[[[-1, 61]], [[-1, 76]]], [[[31, 29], [9, 29]], [[46, 29], [24, 29]]], [[[-1, -4], [-23, -4], [-45, -4]], [[-1, -19], [-23, -19], [-45, -19]]]],
                [[[[-1, 61]], [[-1, 76]]], [[[31, 29], [9, 29]], [[46, 29], [24, 29]]], [[[-1, -4], [-23, -4], [-45, -4]], [[-1, -19], [-23, -19], [-45, -19]]]],
                [[[[46, 28]], [[31, 28]]], [[[-1, -4], [-23, -4]], [[-1, -19], [-23, -19]]]],
                [[[[-4, -1]], [[-19, -1]]], [[[29, 31], [7, 31]], [[29, 46], [7, 46]]], [[[61, -1], [39, -1], [17, -1]], [[76, -1], [54, -1], [32, -1]]]],
                [], [], [], [[[[-4, 28]], [[-19, 28]]], [[[61, 28], [39, 28]], [[76, 28], [54, 28]]], [[[29, -4], [7, -4], [-15, -4]], [[29, -19], [7, -19], [-15, -19]]]],
                [[[[-4, -1]], [[-19, -1]]], [[[29, 31], [7, 31]], [[29, 46], [7, 46]]], [[[61, -1], [39, -1], [17, -1]], [[76, -1], [54, -1], [32, -1]]]],
                [], [], [], [[[[-4, 28]], [[-19, 28]]], [[[61, 28], [39, 28]], [[76, 28], [54, 28]]], [[[29, -4], [7, -4], [-15, -4]], [[29, -19], [7, -19], [-15, -19]]]],
                [[[[-4, -1]], [[-19, -1]]], [[[29, 31], [7, 31]], [[29, 46], [7, 46]]], [[[61, -1], [39, -1], [17, -1]], [[76, -1], [54, -1], [32, -1]]]],
                [], [], [], [[[[-4, 28]], [[-19, 28]]], [[[61, 28], [39, 28]], [[76, 28], [54, 28]]], [[[29, -4], [7, -4], [-15, -4]], [[29, -19], [7, -19], [-15, -19]]]],
                [[[[-4, -1]], [[-19, -1]]], [[[28, 31], [6, 31]], [[28, 46], [6, 46]]]],
                [[[[-4, 29]], [[-19, 29]]], [[[28, 61], [6, 61]], [[28, 76], [6, 76]]], [[[28, -4], [6, -4], [-16, -4]], [[28, -19], [6, -19], [-16, -19]]]],
                [[[[-4, 29]], [[-19, 29]]], [[[28, 61], [6, 61]], [[28, 76], [6, 76]]], [[[28, -4], [6, -4], [-16, -4]], [[28, -19], [6, -19], [-16, -19]]]],
                [[[[-4, 29]], [[-19, 29]]], [[[28, 61], [6, 61]], [[28, 76], [6, 76]]], [[[28, -4], [6, -4], [-16, -4]], [[28, -19], [6, -19], [-16, -19]]]],
                [[[[-4, 28]], [[-19, 28]]], [[[28, -4], [6, -4]], [[28, -19], [6, -19]]]]];
            var first = [randI(-1, 1), randI(-1, 1), randI(-1, 1), randI(-1, 1)];
            var topBorder = (first[0] == 0);
            var bottomBorder = false;
            var leftBorder = (first[3] == 0);
            var rightBorder = false;
            var zeros = countValues(0, first);
            if (zeros.length >= 3) {
                if (topBorder && leftBorder)
                    setValues(-2, puzzle, [0, 1, 2, 3, 4, 5, 10, 15, 20]);
                else if (topBorder)
                    setValues(-2, puzzle, [0, 1, 2, 3, 4]);
                else if (leftBorder)
                    setValues(-2, puzzle, [0, 5, 10, 15, 20]);
                for (var i = (topBorder ? 1 : 0); i < (leftBorder ? 3 : 4);i++)
                    first[i] = randArr([-1, 1]);
            } else if (zeros.length == 2 && topBorder && leftBorder)
                setValues(-2, puzzle, [0, 1, 2, 3, 4, 5, 10, 15, 20]);
            else if (zeros.length == 1 && topBorder)
                setValues(-2, puzzle, [0, 1, 2, 3, 4]);
            else if (zeros.length == 1 && leftBorder)
                setValues(-2, puzzle, [0, 5, 10, 15, 20]);
            else {
                topBorder = leftBorder = false;
                for (var i = 0; i < 4; i++)
                    first[i] = randArr([-1, 1]);
            }
            puzzle[6] = first;
            for (var i = 1; i < 3; i++) {
                puzzle[6 + i] = [(topBorder ? 0 : randArr([-1, 1])), (i == 2 && j == 1 ? randArr([-1, 0, 1]) : randArr([-1, 1])), randArr([-1, 1]), 0 - puzzle[5 + i][1]];
                if (i == 2 && puzzle[6 + i][1] == 0) {
                    rightBorder = true;
                    setValues(-2, puzzle, [4, 9, 14, 19, 24]);
                }
            }
            puzzle[11] = [0 - puzzle[6][2], randArr([-1, 1]), randArr([-1, 1]), (leftBorder ? 0 : randArr([-1, 1]))];
            for (var i = 0; i < 2; i++)
                puzzle[12 + i] = [0 - puzzle[7 + i][2], (i == 1 && rightBorder ? 0 : randArr([-1, 1])), randArr([-1, 1]), 0 - puzzle[11 + i][1]];
            puzzle[16] = [0 - puzzle[11][2], randArr([-1, 1]), randArr([-1, 0, 1]), (leftBorder ? 0 : randArr([-1, 1]))];
            if (puzzle[16][2] == 0) {
                bottomBorder = true;
                setValues(-2, puzzle, [20, 21, 22, 23, 24]);
            }
            for (var i = 1; i < 3; i++)
                puzzle[16 + i] = [0 - puzzle[11 + i][2], (i == 2 && rightBorder ? 0 : randArr([-1, 1])), (bottomBorder ? 0 : randArr([-1, 1])), 0 - puzzle[15 + i][1]];
            var inds = [0, 1, 2, 3, 4, 5, 9, 10, 14, 15, 19, 20, 21, 22, 23, 24];
            for (var i = 0; i < inds.length; i++) {
                if (puzzle[inds[i]][0] != -2) {
                    if (inds[i] < 5) {
                        puzzle[inds[i]][0] = (inds[i] == 3 ? (puzzle[4][0] == -2 ? 0 : randArr([-1, 1])) : randArr([-1, 1]));
                        puzzle[inds[i]][1] = (inds[i] == 0 || inds[i] == 4 ? (inds[i] == 0 ? randArr([-1, 1]) : 0 - puzzle[inds[i] - 1][0]) : 0 - puzzle[inds[i] + 5][0]);
                        if (inds[i] != 0 && inds[i] != 4)
                            puzzle[inds[i]][2] = 0 - (puzzle[inds[i] - 1][0] != -2 ? puzzle[inds[i] - 1][0] : 0);
                    } else if (inds[i] > 20 && inds[i] < 24) {
                        puzzle[inds[i]][0] = 0 - puzzle[inds[i] - 5][2];
                        puzzle[inds[i]][1] = (inds[i] != 23 ? randArr([-1, 1]) : (puzzle[24][0] == -2 ? 0 : randArr([-1, 1])));
                        puzzle[inds[i]][2] = (puzzle[inds[i] - 1][1] != -2? 0 - puzzle[inds[i] - 1][1] : 0);
                    } else if (inds[i] % 5 == 0) {
                        puzzle[inds[i]][0] = 0 - (puzzle[inds[i] - 5][(inds[i] == 5 ? 1 : 2)] != -2 ? puzzle[inds[i] - 5][(inds[i] == 5 ? 1 : 2)] : 0);
                        puzzle[inds[i]][1] = (inds[i] == 20 ? randArr([-1, 1]) : 0 - puzzle[inds[i] + 1][3]);
                        if (inds[i] != 20)
                            puzzle[inds[i]][2] = (puzzle[inds[i] + 5][0] == -2 ? 0 : randArr([-1, 1]));
                    } else {
                        puzzle[inds[i]][0] = 0 - (puzzle[inds[i] - 5][(inds[i] == 9 ? 0 : 1)] != -2 ? puzzle[inds[i] - 5][(inds[i] == 9 ? 0 : 1)] : 0);
                        puzzle[inds[i]][1] = (inds[i] == 24 ? 0 - puzzle[inds[i] - 1][1] : (puzzle[inds[i] + 5][0] == -2 ? 0 : randArr([-1, 1])));
                        if (inds[i] != 24)
                            puzzle[inds[i]][2] = 0 - puzzle[inds[i] - 1][1];
                    }
                }
            }
            //var gridColumn = "grid-template-columns:130px 1fr " + (leftBorder ? "" : "50.4px ") + "repeat(3,80.4px)" + (rightBorder ? "" : " 50.4px") + ";";
            //var gridRow = "grid-template-rows: 10px repeat(5,80.4px);";
            var gridColumn = "grid-template-columns:130px 1fr " + (leftBorder ? "" : "50px ") + "repeat(3,80px)" + (rightBorder ? "" : " 50px") + ";";
            var gridRow = "grid-template-rows: 10px repeat(5,80px);";
            var ranI = randI(0, 3) + 1;
            var ranJ = randI(0, 3) + 1;
            var classDirNames = ["top_", "right_", "bottom_", "left_"];
            var puzzleHTML = blankPuzzle[0] + gridColumn + gridRow + "\">";
            var rowI = 2;
            for (var i = 0; i < 5; i++) {
                var rowJ = 3;
                for (var j = 0; j < 5; j++)
                    if (puzzle[5 * i + j][0] != -2) {
                        if (i == ranI && j == ranJ)
                            puzzleHTML = puzzleHTML + blankPuzzle[5 * i + j + 1].substr(0, 25) + "missing_puzzle" + blankPuzzle[5 * i + j + 1].substr(31) + rowI + " / " + (rowI + 1) + ";grid-column:" + rowJ + " / " + (rowJ + 1) + ";\"></div>";
                        else {
                            puzzleHTML = puzzleHTML + blankPuzzle[5 * i + j + 1] + rowI + " / " + (rowI + 1) + ";grid-column:" + rowJ + " / " + (rowJ + 1) + ";\">";
                            var dirCntr = 0;
                            for (var k = 0; k < puzzle[5 * i + j].length; k++)
                                if (puzzle[5 * i + j][k] == 1)
                                    puzzleHTML = puzzleHTML + pieceHTML(i, j, k, 2, dirCntr++, partials, puzzle, puzzleEqu, ids, classDirNames, puzzleDirs, "knob", "K");
                                else if (puzzle[5 * i + j][k] == -1 && ((i == ranI && j == ranJ - 1 && puzzleDirs[5 * i + j][k] == 1) || (i == ranI - 1 && j == ranJ && puzzleDirs[5 * i + j][k] == 2) || (i == ranI && j == ranJ + 1 && puzzleDirs[5 * i + j][k] == 3) || (i == ranI + 1 && j == ranJ && puzzleDirs[5 * i + j][k] == 0)))
                                    puzzleHTML = puzzleHTML + pieceHTML(i, j, k, 0, dirCntr++, partials, puzzle, puzzleEqu, ids, classDirNames, puzzleDirs, "hole", "H");
                            puzzleHTML = puzzleHTML + "</div>";
                        }
                        rowJ++;
                    }
                rowI++;
                if ((i == 0 && puzzle[1][0] == -2))
                    rowI--;
            }
            var possIds = [[[-1, -1, -1, -1]],
                [[0, -1, -1, -1], [-1, 0, -1, -1], [-1, -1, 0, -1], [-1, -1, -1, 0]],
                [[0, 0, -1, -1], [-1, 0, 0, -1], [-1, -1, 0, 0], [0, -1, -1, 0], [1, -1, -1, -1], [-1, 1, -1, -1], [-1, -1, 1, -1], [-1, -1, -1, 1]],
                [[0, 0, -1, 1], [1, 0, 0, -1], [-1, 1, 0, 0], [0, -1, 1, 0], [0, -1, 1, -1], [-1, 0, -1, 1], [1, -1, 0, -1], [-1, 1, -1, 0], [0, -1, -1, 1], [1, 0, -1, -1], [-1, 1, 0, -1], [-1, -1, 1, 0]],
                [[0, 0, 1, -1], [-1, 0, 0, 1], [1, -1, 0, 0], [0, 0, 1, -1], [0, 0, -1, 1], [1, 0, 0, -1], [-1, 1, 0, 0], [0, 0, -1, 1], [-1, -1, 1, 1], [1, -1, -1, 1], [1, 1, -1, -1], [-1, 1, 1, -1], [-1, 1, -1, 1], [1, -1, 1, -1]],
                [[0, 1, 1, -1], [-1, 0, 1, 1], [1, -1, 0, 1], [1, 1, -1, 0], [0, 1, -1, 1], [1, 0, 1, -1], [-1, 1, 0, 1], [1, -1, 1, 0], [0, -1, 1, 1], [1, 0, -1, 1], [1, 1, 0, -1], [-1, 1, 1, 0]],
                [[0, 0, 1, 1], [1, 0, 0, 1], [1, 1, 0, 0], [0, 1, 1, 0], [1, 1, 1, -1], [-1, 1, 1, 1], [1, -1, 1, 1], [1, 1, -1, 1]],
                [[0, 1, 1, 1], [1, 0, 1, 1], [1, 1, 0, 1], [1, 1, 1, 0]],
                [[1, 1, 1, 1]]];
            var sumAns = puzzle[5 * ranI + ranJ][0] + puzzle[5 * ranI + ranJ][1] + puzzle[5 * ranI + ranJ][2] + puzzle[5 * ranI + ranJ][3] + 4;
            var minus = [];
            for (var i = 0; i < 9; i++)
                if (i != sumAns)
                    minus.push(i);
            var randIndices = [[randArr(minus), 0], [randArr(minus), 0], [randArr(minus), 0], [sumAns, 0]];
            for (var j = 0; j < 3; j++)
                randIndices[j][1] = randI(0, possIds[randIndices[j][0]].length);
            var randomRot = [puzzle[5 * ranI + ranJ][0], puzzle[5 * ranI + ranJ][1], puzzle[5 * ranI + ranJ][2], puzzle[5 * ranI + ranJ][3]];
            var rotateI = randI(0, 4);
            for (var i = 4 - rotateI; i < 4; i++)
                randomRot[i - 4 + rotateI] = randomRot[i];
            for (var i = 0; i < 4 - rotateI; i++)
                randomRot[rotateI + i] = puzzle[5 * ranI + ranJ][i];
            for (var i = 0; i < possIds[sumAns].length; i++) {
                var isRight = true;
                for (var j = 0; j < 4; j++)
                    if (randomRot[j] != possIds[sumAns][i][j]) {
                        isRight = false;
                        break;
                    }
                if (isRight) {
                    randIndices[3][1] = i;
                    break;
                }
            }
            randIndices = randomizeArray(randIndices, 24);
            var options = ["<input type=\"radio\" value=\"firstValue\" name=\"q" + questionI + "\" id=\"q" + questionI + "_1_c\" style=\"grid-row:1 / 2;grid-column:1 / 2;margin-top:34px;\"/><label for=\"q" + questionI + "_1_c\" style=\"grid-row:1 / 2;grid-column:2 / 3;display:inline-block;\">",
                "<input type=\"radio\" value=\"secondValue\" name=\"q" + questionI + "\" id=\"q" + questionI + "_2_c\" style=\"grid-row:2 / 3;grid-column:1 / 2;margin-top:34px;\" /><label for=\"q" + questionI + "_2_c\" style=\"grid-row:2 / 3;grid-column:2 / 3;display:inline-block;\">",
                "<input type=\"radio\" value=\"thirdValue\" name=\"q" + questionI + "\" id=\"q" + questionI + "_3_c\" style=\"grid-row:3 / 4;grid-column:1 / 2;margin-top:34px;\" /><label for=\"q" + questionI + "_3_c\" style=\"grid-row:3 / 4;grid-column:2 / 3;display:inline-block;\">",
                "<input type=\"radio\" value=\"fourthValue\" name=\"q" + questionI + "\" id=\"q" + questionI + "_4_c\" style=\"grid-row:4 / 5;grid-column:1 / 2;margin-top:34px;\" /><label for=\"q" + questionI + "_4_c\" style=\"grid-row:4 / 5;grid-column:2 / 3;display:inline-block;\">"];
            var optionList = "<div style=\"grid-column:1 / 2;grid-row:2 / 7;display:grid;grid-template-columns:50px 80px;grid-template-rows:repeat(4, 130px);\">";
            var knobClassNames = [["bottom", "", "top"], ["left", "", "right"], ["top", "", "bottom"], ["right", "", "left"]];
            for (var i = 0; i < options.length; i++) {
                optionList = optionList + options[i];
                optionList = optionList + "<div id=\"q" + questionI + "_" + (i + 1) + "_tA\" name=\"q" + questionI +"\" for=\"q" + questionI + "_" + (i + 1) + "_c\" class=\"puzzle\">";
                var dirs = 0;
                for (var j = 0; j < 4; j++)
                    if (knobClassNames[j][possIds[randIndices[i][0]][randIndices[i][1]][j] + 1] != "") {
                        var x = puzzleEqu[j][possIds[randIndices[i][0]][randIndices[i][1]][j] == -1 ? 0 : 2][0] * (dirs + 1) + puzzleEqu[j][possIds[randIndices[i][0]][randIndices[i][1]][j] == -1 ? 0 : 2][1];
                        var y = puzzleEqu[j][possIds[randIndices[i][0]][randIndices[i][1]][j] == -1 ? 1 : 3][0] * (dirs++ + 1) + puzzleEqu[j][possIds[randIndices[i][0]][randIndices[i][1]][j] == -1 ? 1 : 3][1];
                        optionList = optionList + "<div class=\"" + knobClassNames[j][possIds[randIndices[i][0]][randIndices[i][1]][j] + 1] + "_knob\" style=\"top:" + x + "px;left:" + y + "px;\"></div>";
                    }
                optionList = optionList + "</div></label>";
            }
            document.getElementById("question" + questionI).innerHTML = "<label id=\"q" + questionI + "text\" style=\"grid-row:1 / 2;grid-column:2 / 6;\">Please picked the appropriate piece that fits into the greyed puzzle piece.</label>" + puzzleHTML + optionList + "</div></div>";
        }
        function pieceHTML(i, j, k, l, dirCntr, partials, puzzle, puzzleEqu, ids, classDirNames, puzzleDirs, classAdd, idAdd) {
            if (i == 0 || i == 4 || j == 0 || j == 4)
                return "<div id=\"" + ids[5 * i + j] + "_" + puzzleDirs[5 * i + j][k] + idAdd + "\" class=\"" + classDirNames[puzzleDirs[5 * i + j][k]] + classAdd +
                    "\" style=\"top:" + partials[5 * i + j][k][(puzzle[5 * i + j][k] == 1 ? 1 : 0)][dirCntr][0] + "px;left:" + partials[5 * i + j][k][(puzzle[5 * i + j][k] == 1 ? 1 : 0)][dirCntr][1] + "px;\"></div>";
            return "<div id=\"" + ids[5 * i + j] + "_" + puzzleDirs[5 * i + j][k] + idAdd + "\" class=\"" + classDirNames[puzzleDirs[5 * i + j][k]] + classAdd +
                "\" style=\"top:" + (puzzleEqu[puzzleDirs[5 * i + j][k]][l][0] * (dirCntr + 1) + puzzleEqu[puzzleDirs[5 * i + j][k]][l][1]) + "px;left:" + (puzzleEqu[puzzleDirs[5 * i + j][k]][l + 1][0] * (dirCntr + 1) + puzzleEqu[puzzleDirs[5 * i + j][k]][l + 1][1]) + "px;\"></div>";
        }
        function randI(min, max) {
            return Math.floor(Math.random() * (max - min)) + min;
        }
        function randArr(array) {
            return array[randI(0, array.length)];
        }
        function countValues(value, array) {
            var count = [];
            for (var i = 0; i < array.length; i++)
                if (array[i] == value)
                    count.push(i);
            return count;
        }
        function setValues(value, array, indices) {
            for (var i = 0; i < indices.length; i++)
                for (var j = 0; j < array[indices[i]].length; j++)
                    array[indices[i]][j] = value;
            return array;
        }
        function printPuzzle(puzzle) {
            var puzzlePrint = "[";
            for (var i = 0; i < puzzle.length - 1; i++) {
                puzzlePrint += "[";
                for (var j = 0; j < puzzle[i].length - 1; j++)
                    puzzlePrint += puzzle[i][j] + ",";
                puzzlePrint += puzzle[i][puzzle[i].length - 1] + "],";
            }
            puzzlePrint += "[";
            for (var j = 0; j < puzzle[puzzle.length - 1].length - 1; j++)
                puzzlePrint += puzzle[puzzle.length - 1][j] + ",";
            puzzlePrint += puzzle[puzzle.length - 1][puzzle[puzzle.length - 1].length - 1] + "]]";
            return puzzlePrint;
        }
        function onDoubleClickLayout(id) {
            document.getElementById("popup").style.top = "5%";
            document.getElementById("popup").style.left = "10%";
            document.getElementById("popup").style.width = "80%";
            document.getElementById("popup").style.height = "90%";
            document.getElementById("modal").style.display = "block";
            document.getElementById(id + "Popup").style.display = "block";
            document.getElementById("titlePopup").innerText = document.getElementById("q23" + id + "_tA").innerText;
        }
        function closePopup() {
            var types = ["all", "sidemain", "mainfoot", "headmain", "response", "horizscroll", "1stgame", "mapgame", "console", "save"];
            if (document.getElementById("savePopup").style.display == "block") {
                document.getElementById("colorList").selectedIndex = 0;
                document.getElementById("animList").selectedIndex = 0;
                for (var i = 0; i < 10; i++)
                    document.getElementById("numb" + i).checked = false;
                var listA = ["genPass", "userL", "passL", "userC", "passC", "passT", "passR", "firstN", "lastN", "phoneC", "emailC", "emailT", "ticketNo", "pubKey"];
                for (var i = 0; i < listA.length; i++)
                    document.getElementById(listA[i]).value = "";
                var ids = ["copyBtn", "vwpassL", "vwpassC", "vwpassT", "createAccount", "tiredAccount", "genPass", "saveExRes", "errC" ,"errT", "errL"];
                for (var i = 0; i < ids.length; i++)
                    document.getElementById(ids[i]).style.display = "none";
                document.getElementById("loginAccount").style.display = "grid";
            }
            document.getElementById('modal').style.display = "none";
            for (var i = 0; i < types.length; i++)
                document.getElementById(types[i] + "Popup").style.display = "none";
            document.getElementById("titlePopup").innerText = "";
        }
        function menuPopup(x) {
            x.classList.toggle("change");
            if (document.getElementById("puHeadmainD").style.display == "none") {
                document.getElementById("puHeadmainD").style.display = "block";
                document.getElementById("puHeadmainApp").style.display = "block";
                document.getElementById("puHeadmainAbout").style.display = "block";
            } else {
                document.getElementById("puHeadmainD").style.display = "none";
                document.getElementById("puHeadmainApp").style.display = "none";
                document.getElementById("puHeadmainAbout").style.display = "none";
            }
        }
        function saveButton(id) {
            if (id != "signInStat" || document.getElementById("signInStat").value != "Sign Out") {
                if (id == "saveBtn" && document.getElementById("signInStat").value == "Sign Out") {
                    errorMsg("Your request has been successfully saved.", false);
                } else {
                    saveBtnType = id;
                    document.getElementById("popup").style.width = (window.innerWidth > 1920 ? "750px" : .6 * window.innerWidth + "px");
                    document.getElementById("popup").style.height = (window.innerHeight > 1080 ? "650px" : .65 * window.innerHeight + "px");
                    var xHeight = parseInt(document.getElementById("popup").style.height.substr(0, document.getElementById("popup").style.height.indexOf('p')));
                    var xWidth = parseInt(document.getElementById("popup").style.width.substr(0, document.getElementById("popup").style.width.indexOf('p')));
                    document.getElementById("popup").style.top = ((window.innerHeight - xHeight) / 2) + "px";
                    document.getElementById("popup").style.left = ((window.innerWidth - xWidth) / 2) + "px";
                    document.getElementById("modal").style.display = "block";
                    document.getElementById("savePopup").style.display = "block";
                    document.getElementById("loginAccount").style.gridTemplateRows = (window.innerHeight > 1080 ? "25% 15px repeat(6, 1fr)" : "0px 15px repeat(6, 1fr)");
                    document.getElementById("tiredAccount").style.gridTemplateColumns = (window.innerWidth > 1250 ? "20% 1fr 20%" : "10% 1fr 10%");
                    document.getElementById("createAccount").style.gridTemplateColumns = (window.innerWidth > 1250 ? "20% 1fr 20%" : "10% 1fr 10%");
                    document.getElementById("genPass").style.gridTemplateColumns = (window.innerWidth > 1250 ? "20% 1fr 20%" : "10% 1fr 10%");
                    if (id == "saveExitBtn" && document.getElementById("signInStat").value == "Sign Out") {
                        errorMsg("Your request has been successfully saved.", false);
                        createAcc("saveExRes", "");
                    }
                }
            } else {
                document.getElementById("userDD").style.display = "none";
                document.getElementById("signInLoad").style.display = "none";
                document.getElementById("signInAcc").style.display = "none";
                document.getElementById("signInBar").style.gridRow = "4 / 5";
                document.getElementById("signInStat").style.gridRow = "5 / 6";
                document.getElementById("accPic").style.gridRow = "2 / 4";
                document.getElementById("myAcc").style.gridTemplateRows = "20px repeat(4, 1fr) 20px";
                document.getElementById("signInStat").value = "Sign In";
                getValues();
                errorMsg("You have been successfully logged out.", false);
            }
        }
        function createAcc(id, curId) {
            var ids = ["loginAccount", "createAccount", "tiredAccount", "genPass"];
            for (var i = 0; i < ids.length; i++)
                if (ids != id)
                    document.getElementById(ids[i]).style.display = "none";
            if (id == "tiredAccount") {
                if (document.getElementById("pubKey").innerText == "")
                    for (var i = 0; i < 6; i++)
                        document.getElementById("pubKey").innerText += randI(0, 10);
                document.getElementById("ticketNo").innerText = "";
            }
            if (id == "genPass")
                prevLoc = curId;
            if (curId == "copyBtn" &&  prevLoc == "tiredGen") {
                document.getElementById("passN").value = document.getElementById("generatedPass").innerText;
                seeThisPass('passN');
            } else if (curId == "copyBtn" && prevLoc == "createGen") {
                document.getElementById("passC").value = document.getElementById("generatedPass").innerText;
                seeThisPass('passC');
            }
            if (curId == "backGen" || curId == "copyBtn") {
                document.getElementById("generatedPass").innerText = "";
                document.getElementById("copyBtn").style.display = "none";
                for (var i = 0; i < 10; i++)
                    document.getElementById("numb" + i).checked = false;
                document.getElementById("colorList").selectedIndex = 0;
                document.getElementById("animList").selectedIndex = 0;
            }
            if (id != '')
                document.getElementById(id).style.display = "grid";
            else if (prevLoc == "tiredGen")
                document.getElementById("tiredAccount").style.display = "grid";
            else if (prevLoc == "createGen")
                document.getElementById("createAccount").style.display = "grid";
        }
        function generatePassword() {
            var subS = ["o", "i", "z", "e", "a", "s", "g", "l", "b", "d"];// [["e", 3],["o", 0], ["l", 7], ["i", 1], ["a", 4], ["s", 5], ["g", 6], ["b", 8], ["d", 9], ["z", 2]]
            var selectNumbs = $('input[type=checkbox][name="genPassNum"]:checked').map(function () { return $(this).attr('id') }).get();
            var isErrB = selectNumbs.length == 0;
            var numbs = [];
            for (var i = 0; i < selectNumbs.length; i++)
                numbs[i] = selectNumbs[i].charCodeAt(4) - 48;
            //alert("SelectNumbs: " + selectNumbs + "; Numbs: " + numbs);
            var isErrA = document.getElementById("colorList").selectedIndex == 0;
            var color = document.getElementById("colorList").options[document.getElementById("colorList").selectedIndex].value;
            var isErrC = document.getElementById("animList").selectedIndex == 0;
            var animal = document.getElementById("animList").options[document.getElementById("animList").selectedIndex].value;
            if (!isErrA && !isErrB && !isErrC) {
                var result = "";
                if (randI(0, 2) == 0)
                    result = color + animal;
                else
                    result = animal + color;
                var newResult = "";
                //alert("Previous Rotation result: " + result);
                for (var i = 0; i < result.length; i++) {
                    var type_ran = randI(0, 10);
                    var ranFlip = randI(0, 2);
                    if (type_ran == 0 || type_ran == 2 || type_ran == (ranFlip % 2) * 5) {
                        var isFound = false;
                        for (var j = 0; j < 10; j++)
                            if (subS[j] == result.charAt(i)) {
                                newResult += j;
                                isFound = true;
                                break;
                            }
                        if (!isFound)
                            newResult += result.charAt(i);
                    } else if (type_ran == 1 || type_ran == 3 || type_ran == ((ranFlip + 1) % 2) * 5)
                        newResult += result.charAt(i).toUpperCase();
                    else
                        newResult += result.charAt(i);
                }
                var ranNumLens = randI(2, 7);
                for (var i = 0; i < ranNumLens; i++)
                    newResult += numbs[randI(0, numbs.length)];
                document.getElementById("generatedPass").innerText = newResult;
                document.getElementById("generatedPass").style.fontSize = "1.5em";
                document.getElementById("generatedPass").style.color = "#f26722";
                document.getElementById("copyBtn").style.display = "inline-block";
            } else {
                document.getElementById("cols").style.border = (isErrA ? "2px solid red" : "1px solid transparent");
                document.getElementById("nums").style.borderLeft = (isErrB ? "2px solid red" : "1px solid transparent");
                document.getElementById("nums").style.borderRight = (isErrB ? "2px solid red" : "1px solid transparent");
                document.getElementById("nums").style.borderTop = (!isErrA && isErrB ? "2px solid red" : "1px solid transparent");
                document.getElementById("nums").style.borderBottom = (isErrB && !isErrC ? "2px solid red" : "1px solid transparent");
                document.getElementById("anims").style.borderLeft = (isErrC ? "2px solid red" : "1px solid transparent");
                document.getElementById("anims").style.borderRight = (isErrC ? "2px solid red" : "1px solid transparent");
                document.getElementById("anims").style.borderTop = (!isErrB && isErrC ? "2px solid red" : "1px solid transparent");
                document.getElementById("anims").style.borderBottom = (isErrC ? "2px solid red" : "1px solid transparent");
                document.getElementById("generatedPass").innerText = "An error has occurred!";
                document.getElementById("copyBtn").style.display = "none";
                document.getElementById("generatedPass").style.fontSize = "16px";
                document.getElementById("generatedPass").style.color = "red";
            }
        }
        function seeThisPass(event, id) {
            document.getElementById("vw" + id).value = (document.getElementById(id).value.length > 0 ? "\uD83D\uDC41" : "");
            document.getElementById("vw" + id).style.display = (document.getElementById(id).value.length > 0 ? "inline-block" : "none");
            keySignInCheck(event, id);
        }
        function viewPass(id) {
            document.getElementById(id.substr(2)).type = (document.getElementById(id.substr(2)).type == "password" ? "text" : "password");
        }
        function signIn(id) {
            if (id == "loginBtn") {
                var isErr = errorHandling("userL", false) | errorHandling("passL", false);
                if (isErr == 1) {
                    var errString = ($("#userL").val() == "" ? "The username" : "") + ($("#userL").val() == "" && $("#passL").val() == "" ? " and the password" : ($("#passL").val() == "" ? "The password" : "")) + (isErr == 1 ? " can't be empty." : "");
                    document.getElementById("errL").innerText = errString;
                    document.getElementById("errL").style.visibility = "visible";
                    errorMsg(errString, true);
                } else {
                    $.ajax({
                        type: "POST",
                        url: "WebService.asmx/LoginRequest",
                        data: "{ username: '" + $("#userL").val() + "', password: '" + $("#passL").val() + "' }",
                        datatype: "json",
                        contentType: "application/json; charset=utf-8",
                        success: function (data, status, xhr) {
                            //alert("I am trying to load the message!");
                            errorMsg("You have been successfully logged in.", false);
                            loginSave(data.d, "errL", "collapse");
                        },
                        error: function (xhr, status, error) {
                            var errMsg = JSON.parse(xhr.responseText);
                            //alert("xhr.responseText: '" + xhr.responseText + "'; errMsg.Message: '" + errMsg.Message + "'");
                            document.getElementById("errL").innerText = (errMsg.Message != "" ? errMsg.Message : "The username and/or password is incorrect.");
                            document.getElementById("errL").style.visibility = "visible";
                            setColor("userL", "1px solid red", "#FFB3B2");
                            setColor("passL", "1px solid red", "#FFB3B2");
                            errorMsg(document.getElementById("errL").innerText, true);
                        }
                    });
                }
            } else if (id == "createBtn") {
                var isErr = errorHandling("firstN", false) | errorHandling("lastN", false) | errorHandling("emailC", false) | errorHandling("phoneC", false) | errorHandling("userC", false) | errorHandling("passC", false) | errorHandling("passR", false);
                var emailIsErr = errorHandling("emailC", true);
                if (isErr == 1) {
                    document.getElementById("errC").innerText = "These values can't be empty.";
                    document.getElementById("errC").style.visibility = "visible";
                    errorMsg("These values can't be empty.", true);
                } else if (emailIsErr) {
                    document.getElementById("errC").innerText = "The email isn't valid.";
                    document.getElementById("errC").style.visibility = "visible";
                    errorMsg("The email isn't valid.", true);
                } else if ($("#passC").val() != $("#passR").val()) {
                    setColor("passC", "1px solid red", "#FFB3B2");
                    setColor("passR", "1px solid red", "#FFB3B2");
                    document.getElementById("errC").innerText = "The passwords do not match.";
                    document.getElementById("errC").style.visibility = "visible";
                    errorMsg("The passwords do not match.", true);
                } else {
                    $.ajax({
                        type: "POST",
                        url: "WebService.asmx/CreateRequest",
                        data: "{ fname: '" + $("#firstN").val() + "', lname: '" + $("#lastN").val() + "', email: '" + $("#emailC").val() + "', phone: '" + $("#phoneC").val() + "', username: '" + $("#userC").val() + "', password: '" + $("#passC").val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        success: function (data, status, xhr) {
                            alert("I am creating the account!");
                            errorMsg("Your account has been successfully created.", false);
                            loginSave(data.d, "errC", "collapse");
                            getValues();
                        },
                        error: function (xhr, status, error) {
                            var errMsg = JSON.parse(xhr.responseText);
                            document.getElementById("errC").innerText = (errMsg.Message != "" ? errMsg.Message : "An error has occurred.");
                            document.getElementById("errC").style.visibility = "visible";
                            var lines = ["firstN", "lastN", "emailC", "phoneC", "userC", "passC", "passR"];
                            for (var i = 0; i < lines.length; i++)
                                setColor(lines[i], "1px solid red", "#FFB3B2");
                            errorMsg(document.getElementById("errC").innerText, true);
                        }
                    });
                }
            } else if (id == "createAltBtn") {
                var isErr = errorHandling("emailT", false) | errorHandling("passT", false);
                var emailIsCorr = errorHandling("emailT", true);
                if (isErr == 1) {
                    var errString = ($("#emailT").val() == "" ? "The email" : "") + ($("#emailT").val() == "" && $("#passT").val() == "" ? " and the password" : ($("#passT").val() == "" ? "The password" : "")) + (isErr == 1 ? " can't be empty." : "");
                    document.getElementById("errT").innerText = errString;
                    errorMsg(errString, true);
                    document.getElementById("errT").style.visibility = "visible";
                } else if (emailIsCorr == 1) {
                    document.getElementById("errT").innerText = "The email isn't valid.";
                    errorMsg("The email isn't valid.", true);
                    document.getElementById("errT").style.visibility = "visible";
                } else {
                    getValues();
                    /**$.ajax({
                        type: "POST",
                        url: "WebService.asmx/CreateAltRequest",
                        data: "{ email: '" + $("#emailT").val() + "', password: '" + $("#passT").val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        success: function () { loginSave(data, "errT", "collapse"); },
                        error: function (xhr, status, error) {
                            errorMsg("An error has occurred.", true);
                            document.getElementById("errT").style.visibility = "visible";
                        }
                    });*/
                }
            }
        }
        function keySignInCheck(event, id) {
            if (event.key.charCodeAt(0) == 84)
                return;
            var list = ["userL", "passL", "firstN", "lastN", "emailC", "phoneC", "userC", "passC", "passR", "emailT", "passT"];
            var errMsg = ["errL", "errC", "errT"];
            var emailList = [false, false, false, false, true, false, false, false, false, true, false];
            var confirmList = [7, 8];
            var a = (document.getElementById("loginAccount").style.display == "grid" ? 0 : (document.getElementById("createAccount").style.display == "grid" ? 2 : 9));
            var b = (document.getElementById("loginAccount").style.display == "grid" ? 2 : (document.getElementById("createAccount").style.display == "grid" ? 9 : 11));
            var c = (document.getElementById("loginAccount").style.display == "grid" ? 0 : (document.getElementById("createAccount").style.display == "grid" ? 1 : 2));
            for (var i = a; i < b; i++) {
                if (id == list[i]) {
                    if ($("#" + list[i]).val() == "") {
                        var isValid = errorHandling(list[i], false);
                        if (isValid == 1 && (document.getElementById(errMsg[c]).style.visibility == "collapse" || document.getElementById(errMsg[c]).innerText == "The email isn't valid.") && c == 1) {
                            document.getElementById(errMsg[c]).innerText = "These values can't be empty.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        } else if (isValid == 1 && (document.getElementById(errMsg[c]).style.visibility == "collapse" || document.getElementById(errMsg[c]).innerText.indexOf(" can't be empty.") == -1) && c == 0) {
                            var iL = (list[i].substr(0, list[i].length - 1) == "pass" ? "password" : "username");
                            document.getElementById(errMsg[c]).innerText = "The " + (list[i].substr(0, list[i].length - 1) == "pass" ? "password" : "username") + " can't be empty.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        } else if (isValid == 1 && c == 0) {
                            var iL = "he " + (list[i].substr(0, list[i].length - 1) == "pass" ? "password" : "username");
                            var iO = (document.getElementById(errMsg[c]).innerText.indexOf("password") != -1 ? 1 : 12);
                            if (document.getElementById(errMsg[c]).innerText.indexOf(iL) == -1) {
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, iO) + (iO == 1 ? "" : " and t") + iL + (iO == 1 ? " and t" : "") + document.getElementById(errMsg[c]).innerText.substr(iO);
                                document.getElementById(errMsg[c]).style.visibility = "visible";
                            }
                        } else if (isValid == 1 && (document.getElementById(errMsg[c]).style.visibility == "collapse" || document.getElementById(errMsg[c]).innerText.indexOf(" can't be empty.") == -1) && c == 2) {
                            document.getElementById(errMsg[c]).innerText = "The " + (list[i].substr(0, list[i].length - 1) == "pass" ? "password" : "email") + " can't be empty.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        } else if (isValid == 1 && c == 2) {
                            var iO = (document.getElementById(errMsg[c]).innerText.indexOf("password") != -1 ? 1 : 9);
                            if (document.getElementById(errMsg[c]).innerText.indexOf(iL) == -1) {
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, iO) + (iO == 1 ? "" : " and t") + "he " + (list[i].substr(0, list[i].length - 1) == "pass" ? "password" : "email") + (iO == 1 ? " and t" : "") + document.getElementById(errMsg[c]).innerText.substr(iO);
                                document.getElementById(errMsg[c]).style.visibility = "visible";
                            }
                        }
                    } else if (emailList[i]) {
                        var isEmailValid = errorHandling(list[i], true);
                        if (isEmailValid == 1 && (document.getElementById(errMsg[c]).style.visibility == "collapse" || document.getElementById(errMsg[c]).innerText == "These values can't be empty.")) {
                            document.getElementById(errMsg[c]).innerText = "The email isn't valid.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        } else if (isEmailValid == 0)
                            document.getElementById(errMsg[c]).style.visibility = "collapse";
                    } else if (i == confirmList[0] && $("#" + list[i]).val() != $("#" + list[confirmList[1]]).val() && $("#" + list[i]).val() != "" && $("#" + list[confirmList[1]]).val() != "") {
                        setColor(list[i], "1px solid red", "#FFB3B2");
                        setColor(list[confirmList[1]], "1px solid red", "#FFB3B2");
                        if (document.getElementById(errMsg[c]).style.visibility == "collapse") {
                            document.getElementById(errMsg[c]).innerText = "The passwords do not match.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        }
                    } else if (i == confirmList[1] && $("#" + list[i]).val() != $("#" + list[confirmList[0]]).val() && $("#" + list[i]).val() != "" && $("#" + list[confirmList[0]]).val() != "") {
                        setColor(list[i], "1px solid red", "#FFB3B2");
                        setColor(list[confirmList[0]], "1px solid red", "#FFB3B2");
                        if (document.getElementById(errMsg[c]).style.visibility == "collapse") {
                            document.getElementById(errMsg[c]).innerText = "The passwords do not match.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        }
                    } else if (list[i] == "phoneC" && ($("#" + list[i]).val().length < 14 || $("#" + list[i]).val().length == 15 || $("#" + list[i]).val().length == 16)) {
                        setColor(list[i], "1px solid red", "#FFB3B2");
                        if (document.getElementById(errMsg[c]).style.visibility == "collapse") {
                            document.getElementById(errMsg[c]).innerText = "The phone number isn't valid.";
                            document.getElementById(errMsg[c]).style.visibility = "visible";
                        }
                    } else {
                        errorHandling(list[i], false);
                        var j = false;
                        var indexI = -1;
                        if (c == 0) {
                            j = document.getElementById("userL").style.borderColor == "red" || document.getElementById("passL").style.borderColor == "red";
                            if (j)
                                indexI = document.getElementById(errMsg[c]).innerText.indexOf(list[i].substr(0, list[i].length - 1));
                        } else if (c == 1)
                            j = document.getElementById("firstN").style.borderColor == "red" || document.getElementById("lastN").style.borderColor == "red" || document.getElementById("emailC").style.borderColor == "red" || document.getElementById("phoneC").style.borderColor == "red" ||
                                document.getElementById("userC").style.borderColor == "red" || document.getElementById("passC").style.borderColor == "red" || document.getElementById("passR").style.borderColor == "red";
                        else {
                            j = document.getElementById("emailT").style.borderColor == "red" || document.getElementById("passT").style.borderColor == "red";
                            if (j)
                                indexI = document.getElementById(errMsg[c]).innerText.indexOf(list[i].substr(0, list[i].length - 1));
                        }
                        if (!j)
                            document.getElementById(errMsg[c]).style.visibility = "collapse";
                        else if (indexI != -1) {
                            if (c == 0 && indexI < document.getElementById(errMsg[c]).innerText.indexOf(" and "))
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, 1) + document.getElementById(errMsg[c]).innerText.substr(indexI + 14);
                            else if (c == 0)
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, indexI - 9) + document.getElementById(errMsg[c]).innerText.substr(indexI + 8);
                            else if (c == 2 && indexI < document.getElementById(errMsg[c]).innerText.indexOf(" and "))
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, 1) + document.getElementById(errMsg[c]).innerText.substr(indexI + 15);
                            else
                                document.getElementById(errMsg[c]).innerText = document.getElementById(errMsg[c]).innerText.substr(0, indexI + 6) + document.getElementById(errMsg[c]).innerText.substr(indexI + 20);
                        } else if (i == confirmList[0] || i == confirmList[1]) {
                            setColor(list[confirmList[0]], "1px solid #f26722", "white");
                            setColor(list[confirmList[1]], "1px solid #f26722", "white");
                            if (document.getElementById(errMsg[c]).innerText == "The email isn't valid.")
                                document.getElementById(errMsg[c]).style.visibility = "collapse";
                        } else if (list[i] == "phoneC" && ($("#" + list[i]).val().length == 14 || $("#" + list[i]).val().length > 16)) {
                            setColor("phoneC", "1px solid #f26722", "white");
                            if (document.getElementById(errMsg[c]).innerText == "The phone number isn't valid.")
                                document.getElementById(errMsg[c]).style.visibility = "collapse";
                        }
                    }
                    break;
                }
            }
        }
        function errorHandling(id, isEmail) {
            if ($("#" + id).val() == "" && !isEmail) {
                setColor(id, "2px solid red", "#FFB3B2");
                return 1;
            } else if (isEmail) {
                var value = $("#" + id).val();
                var atSignI = value.indexOf('@');
                var atLastPeriodI = value.lastIndexOf('.');
                if (atSignI == -1 || atLastPeriodI == -1 || atSignI > atLastPeriodI || atLastPeriodI >= value.length - 2 || atLastPeriodI - atSignI < 2) {
                    setColor(id, "2px solid red", "#FFB3B2");
                    return 1;
                }
                setColor(id, "1px solid #f26722", "white");
                return 0;
            }
            setColor(id, "1px solid #f26722", "white");
            return 0;
        }
        function setColor(id, borderI, backI) {
            document.getElementById(id).style.border = borderI;
            document.getElementById(id).style.backgroundColor = backI;
        }
        function exitBtn() {

        }
        function formatPhone(event) {
            var code = event.key.charCodeAt(0);
            if ((code >= 48 && code < 58) || code == 40 || code == 41 || code == 32 || code == 45 || code == 120) {
                var value = document.getElementById("phoneC").value;
                if (value.length == 15 && document.getElementById("phoneC").value.charCodeAt(14) == 32 && code == 120)
                    return;
                else if (value.length == 14 && (code >= 48 && code < 58))
                    document.getElementById("phoneC").value += " x";
                else if (value.length == 14 && code == 120)
                    document.getElementById("phoneC").value += " ";
                else if (value.length == 14 && code == 32)
                    document.getElementById("phoneC").value += "";
                else if (value.length == 9 && code >= 48 && code < 58)
                    document.getElementById("phoneC").value = value + "-";
                else if (value.length == 9 && code == 45)
                    document.getElementById("phoneC").value += "";
                else if (value.length == 5 && code == 32)
                    document.getElementById("phoneC").value += "";
                else if (value.length == 4 && code >= 48 && code < 57)
                    document.getElementById("phoneC").value += ") ";
                else if (value.length == 4 && code == 32)
                    document.getElementById("phoneC").value += ")";
                else if (value.length == 4 && code == 41)
                    document.getElementById("phoneC").value += "";
                else if (value.length == 0 && code >= 48 && code < 58)
                    document.getElementById("phoneC").value = "(";
                else if (value.length == 0 && code == 40)
                    document.getElementById("phoneC").value += "";
                else if (code < 48 || code > 57)
                    event.preventDefault();
            } else
                event.preventDefault();
        }
        function loginSave(results, id, taskI) {
            document.getElementById(id).style.visibility = taskI;
            document.getElementById("signInUID").innerText = results[0];
            document.getElementById("signInUser").innerText = results[1];
            $.ajax({
                type: "POST",
                url: "WebService.asmx/GetNextTicketNo",
                data: "{ userID: '" + results[0] + "' }",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (data, status, xhr) {
                    alert("I am trying to load the next ticket number!");
                    alert("Data: [" + data.d + "]; Length: " + data.d.length);
                    if (data.d.length > 5) {
                        document.getElementById("popup").style.width = .6 * window.innerWidth + "px";
                        document.getElementById("popup").style.height = .65 * window.innerHeight + "px";
                        var xHeight = parseInt(document.getElementById("popup").style.height.substr(0, document.getElementById("popup").style.height.indexOf('p')));
                        var xWidth = parseInt(document.getElementById("popup").style.width.substr(0, document.getElementById("popup").style.width.indexOf('p')));
                        document.getElementById("popup").style.top = ((window.innerHeight - xHeight) / 2) + "px";
                        document.getElementById("popup").style.left = ((window.innerWidth - xWidth) / 2) + "px";
                        var tableLayout = "<tr style=\"background-color:rgba(242, 103, 34, 0.5);\"><th style=\"padding:5px;\"></th><th style=\"padding:5px;\">Ticket No</th><th style=\"padding:5px;\">Date</th>" +
                            "<th style=\"padding:5px;\">Application Type</th><th style=\"padding:5px;\">Contact Name</th><th style=\"padding:5px;\">Company Name</th></tr>";
                        for (var i = 1; i < data.d.length / 5; i++) {
                            tableLayout += "<tr style=\"background-color:" + (i % 2 == 0 ? "rgba(242,103,34,0.5)" : "white") + ";\"><td style=\"padding:5px;\"><input id=\"tn" + data.d[5 * i] + "\" type=\"checkbox\" name=\"req\" onchange=\"requests()\" style=\"margin:auto;\" /></td>";
                            for (var j = 0; j < 5; j++)
                                tableLayout += "<td style=\"padding:5px;\">" + data.d[5 * i + j] + "</td>";
                            tableLayout += "</tr>";
                        }
                        alert(tableLayout);
                        document.getElementById("reqTable").innerHTML = tableLayout;
                        var outs = ["loginAccount", "createAccount", "tiredAccount", "saveExRes"];
                        for (var i = 0; i < outs.length; i++)
                            document.getElementById(outs[i]).style.display = "none";
                        document.getElementById("loadRequest").style.display = "grid";
                        saveBtnType = "loadRequest";
                        siDDVis();
                    } else {
                        siDDVis();
                        getValues();
                    }
                },
                error: function (xhr, status, error) {
                    var errMsg = JSON.parse(xhr.responseText);
                    //alert("xhr.responseText: '" + xhr.responseText + "'; errMsg.Message: '" + errMsg.Message + "'");
                    document.getElementById("errL").innerText = (errMsg.Message != "" ? errMsg.Message : "The username and/or password is incorrect.");
                    document.getElementById("errL").style.visibility = "visible";
                    setColor("userL", "1px solid red", "#FFB3B2");
                    setColor("passL", "1px solid red", "#FFB3B2");
                    errorMsg(document.getElementById("errL").innerText, true);
                }
            });
        }
        function errorMsg(msg, isAnError) {
            //alert("I am beginnning to load the message! The message is as the following: '" + msg + "'.");
            document.getElementById("msgBoxLbl").innerText = msg;
            document.getElementById("msgBoxLbl").style.color = (isAnError ? "red" : "#f26722");
            if (document.getElementById("popupMsgBox").classList.contains("msgBoxAnimation"))
                document.getElementById("popupMsgBox").classList.remove("msgBoxAnimation");
            document.getElementById("popupMsgBox").offsetHeight;
            document.getElementById("popupMsgBox").classList.add("msgBoxAnimation");
            //alert("I finished loading the message!");
        }
        function getValues() {
            /**var names = ["ticketNo"(0), "email"(1), "userID"(2), "pubKey"(3), "companyName"(4), "contactName"(5), "phone"(6), "address"(7), "city"(8), "state"(9), "zip"(10), "contactTimes"(11), "appType"(12), "useCase"(13), "audience"(14), "employees"(15), "accounts"(16), "updatingPrev"(17), "fullAccess"(18), "oses"(19),
                "webInter"(20), "idkos"(21), "googleStore"(22), "appleStore"(23), "descrStore"(24), "privacy"(25), "copyright"(26), "devices"(27), "attributes"(28), "layouts"(29), "referLayoutsA"(30), "referLayoutsB"(31), "referLayoutsC"(32), "referLayoutsD"(33), "referLayoutsE"(34), "descrLayout"(35), 
                "feats"(36), "featUser"(37), "topFeatsA"(38), "topFeatsB"(39), "topFeatsC"(40), "topFeatsD"(41), "topFeatsE"(42), "scanFeats"(43), "overallFunc"(44), "otherFeats"(45), "furtherDets"(46), "progress"(47), "currentProgress"(48), "description"(49), "userAct"(50)];*/
            //alert("I am in the getValues!");
            //r listing = [ 0,  1, 2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12,13,14,15,16,17,18, 19, 20, 21,22,23, 24,25,26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,47,                            48,
            //                                                                  49, 50];
            var listing = ["", "", 0, "", "", "", "", "", "", "", "", "", "", 0, 0, 0, 0, 0, 0, "", "", "", 0, 0, "", 0, 0, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 0, "Pre-Submission, In Progress",
                "The user is still building the request and hasnt been submitted.", ""];
            //alert(document.getElementById("userDD").innerText);
            listing[0] = (document.getElementById("signInTicket").innerText != "" ? document.getElementById("signInTicket").innerText : "");
            listing[1] = "thuffman920@gmail.com"; //document.getElementById("q38").value; //email - Question 38
            alert(sha512(listing[1]));
            listing[2] = parseInt(document.getElementById("signInUID").innerText); //userID - From Login
            listing[3] = md5(document.getElementById("tiredAccount").style.display == "grid" ? document.getElementById("pubKey").innerText : ""); //pubKey - ONLY IF NOT USING AN ACCOUNT
            listing[4] = "Buncombe County Schools"; //companyName - Question 38
            listing[5] = "Tyler Huffman"; //contactName - Question 38
            listing[6] = "(828) 275-4712"; //phone - Question 38
            listing[7] = "71 Herron Cove Rd"; //address - Question 38
            listing[8] = "Weaverville"; //city - Question 38
            listing[9] = "NC"; //state - Question 38
            listing[10] = "28787"; //zip - Question 38
            listing[11] = "[[7, 15], [7, 15], [7, 15], [7, 15], [7, 15], [0, 0], [0, 0]] EST"; //contactTimes - Question 39
            //alert("Passed the personal information!");
            if ($('input[type=checkbox][name="q9"]:checked').length > 0) {
                listing[12] = print($('input[type=checkbox][name="q9"]:checked').map(function () { return $(this).attr('id') })); //appType - Question 9
                //alert("Passed the app Type!");
            } else {
                //alert("No need for app Type!");
            }
            //alert("Use Cases: '" + $('input[type=radio][name="q1"]:checked').length + "'")
            if ($('input[type=radio][name="q1"]:checked').length == 1) {
                listing[13] = parseInt(document.getElementById($('input[type=radio][name="q1"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //useCase - Question 1
                //alert("Passed the use case!");
            } else {
                //alert("No need for the use case!");
            }
            if ($('input[type=radio][name="q3"]:checked').length == 1) {
                listing[14] = parseInt(document.getElementById($('input[type=radio][name="q3"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //audience - Question 3
                //alert("Passed the audience!");
            } else {
                //alert("No need for the audience!");
            }
            if ((listing[14] == 0 || listing[14] == 2) && $('input[type=radio][name="q4"]:checked').length == 1) {
                listing[15] = parseInt(document.getElementById($('input[type=radio][name="q4"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //employees - Question 4
                //alert("Passed the employees!");
            } else {
               // alert("No need for the employees!");
            }
            if ($('input[type=radio][name="q5"]:checked').length == 1) {
                listing[16] = parseInt(document.getElementById($('input[type=radio][name="q5"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //accounts - Question 5
                //alert("Passed the accounts!");
            } else {
                //alert("No need for the accounts!");
            }
            if ($('input[type=radio][name="q7"]:checked').length == 1) {
                listing[17] = parseInt(document.getElementById($('input[type=radio][name="q7"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //updatingPrev - Question 7
                //alert("Passed the updating previous!");
            } else {
                //alert("No need for the updating previous!");
            }
            if (listing[17] == 0 && $('input[type=radio][name="q8"]:checked').length == 1) {
                listing[18] = parseInt(document.getElementById($('input[type=radio][name="q8"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //fullAccess - Question 8
                //alert("Passed the full access!");
            } else {
                //alert("No need for the full access!");
            }
            if (listing[12] != "[q9w_c]" && $('input[type=checkbox][name="q10"]:checked').length > 0) {
                listing[19] = print($('input[type=checkbox][name="q10"]:checked').map(function () { return $(this).attr('id') })); //oses - Questions 10
                //alert("Passed the oses!");
            } else {
                //alert("No need for the oses!");
            }
            if ($('input[type=checkbox][name="q11"]:checked').length > 0) {
                listing[20] = print($('input[type=checkbox][name="q11"]:checked').map(function () { return $(this).attr('id') })); //webInter - Questions 11
                //alert("Passed the checkbox button web interface!");
            } else if ($('input[type=radio][name="q11"]:checked').length == 1) {
                listing[20] = $('input[type=radio][name="q11"]:checked').attr('id'); //webInter - Questions 11
                //alert("Passed the radio button web interface!");
            } else {
                //alert("No need for the web interface!");
            }
            listing[21] = $("#q12_b").val(); //idkos - Questions 12
            //alert("Passed the unknown os!");
            if ($('input[type=radio][name="q13"]:checked').length > 0) {
                listing[22] = parseInt(document.getElementById($('input[type=radio][name="q13"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //googleStore - Questions 10
                //alert("Passed the google store!");
            } else {
                //alert("No need for the google store!");
            }
            if ($('input[type=radio][name="q14"]:checked').length > 0) {
                listing[23] = parseInt(document.getElementById($('input[type=radio][name="q14"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //appleStore - Questions 14
                //alert("Passed the apple store!");
            } else {
                //alert("No need for the apple store!");
            }
            listing[24] = document.getElementById("q15").innerText; //descrStore - Questions 15
            //alert("Passed the description of store purchases!");
            if ($('input[type=radio][name="q17"]:checked').length == 1) {
                listing[25] = parseInt(document.getElementById($('input[type=radio][name="q17"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //privacy - Question 17
                //alert("Passed the copyright!");
            } else {
                //alert("No need for the copyright!");
            }
            if ($('input[type=radio][name="q18"]:checked').length == 1) {
                listing[26] = parseInt(document.getElementById($('input[type=radio][name="q18"]:checked').attr('id')).style.gridRow.substr(0, 1)) - 2; //copyright - Question 18
                //alert("Passed the copyright!");
            } else {
                //alert("No need for the copyright!");
            }
            if ($('input[type=checkbox][name="q20"]:checked').length > 0) {
                listing[27] = print($('input[type=checkbox][name="q20"]:checked').map(function () { return $(this).attr('id') })); //devices - Questions 20
                //alert(print(listing));
            } else {
                //alert("No need for the compatible devices!");
            }
            var attrInput = "[";
            for (var i = 0; i < 6; i++) {
                //alert("ID (jquery): '" + $("#divL" + i).children().attr('id') + "'; ID (javascript): '" + document.getElementById("divL" + i).firstChild + "'");
                //alert("ID(javascript): '" + document.getElementById("divL" + (i + 1)).children[1].id + "'");
                attrInput += (document.getElementById("divL" + (i + 1)).children.length > 1 ? document.getElementById("divL" + (i + 1)).children[1].id : "") + (i < 5 ? "," : "");
            }
            listing[28] = attrInput + "]"; //attributes - Question 21
            //alert("Passed the attributes!");
            if ($('input[type=checkbox][name="q23"]:checked').length > 0) {
                listing[29] = print($('input[type=checkbox][name="q23"]:checked').map(function () { return $(this).attr('id') })); //layouts - Question 23
                //alert("Passed the attributes!");
            } else {
                //alert("No need for the attributes!");
            }
            if ($('input[type=radio][name="q24"]:checked').length == 1 && $('input[type=radio][name="q24"]:checked').attr('id') == "q24yes_c") {//Confirm if need to add referlayouts - Question 24
                listing[30] = document.getElementById("q25one_t").value; //referLayoutA - Question 25A
                //alert("Passed the reference layout A!");
                listing[31] = document.getElementById("q25two_t").value; //referLayoutB - Question 25B
                //alert("Passed the reference layout B!");
                listing[32] = document.getElementById("q25three_t").value; //referLayoutC - Question 25C
                //alert("Passed the reference layout C!");
                listing[33] = document.getElementById("q25four_t").value; //referLayoutD - Question 25D
                //alert("Passed the reference layout D!");
                listing[34] = document.getElementById("q25five_t").value; //referLayoutE - Question 25E
                //alert("Passed the reference layout E!");
            }
            //alert(print(listing));
            listing[35] = document.getElementById("q27").innerText; //descrLayout - Question 27
            //alert("Passed the description layout!");
            var scannerI = false;
            if ($('input[type=checkbox][name="q28"]:checked').length > 0) {
                var q29List = $('input[type=checkbox][name="q28"]:checked').map(function () { return $(this).attr('id') });
                for (var j = 0; j < q29List.length; j++)
                    if (q29List[i] == "q29featScan_c") {
                        scannerI = true;
                        break;
                    }
                listing[36] = print(q29List); //feats - Question 28
                //alert("Passed the features!");
            } else {
                //alert("No need for the features!");
            }
            var featsUserInput = "";
            for (var i = 0; i < 12; i++) {
                var nextVal = $("#q29uFeat" + String.fromCharCode(65 + i)).val();
                if (nextVal != "")
                    featsUserInput += nextVal + (i < 11 ? "," : "");
            }
            listing[37] = featsUserInput; //featUser - Question 29
            //alert("Passed the feature user inputs!");
            if (document.getElementById("divS1").children.length > 1) {
                listing[38] = document.getElementById("divS1").children[1].id; //topFeatsA - Question 30A
                //alert("Passed the feature user A!");
            } else {
                //alert("No need for the feature user A!");
            }
            if (document.getElementById("divS2").children.length > 1) {
                listing[39] = document.getElementById("divS2").children[1].id; //topFeatsB - Question 30B
                //alert("Passed the feature user B!");
            } else {
                //alert("No need for the feature user B!");
            }
            if (document.getElementById("divS3").children.length > 1) {
                listing[40] = document.getElementById("divS3").children[1].id; //topFeatsC - Question 30C
                //alert("Passed the feature user C!");
            } else {
                //alert("No need for the feature user C!");
            }
            if (document.getElementById("divS4").children.length > 1) {
                listing[41] = document.getElementById("divS4").children[1].id; //topFeatsD - Question 30D
                //alert("Passed the feature user D!");
            } else {
                //alert("No need for the feature user D!");
            }
            if (document.getElementById("divS5").children.length > 1) {
                listing[42] = document.getElementById("divS5").children[1].id; //topFeatsE - Question 30E
                //alert("Passed the feature user E!");
            } else {
                //alert("No need for the feature user E!");
            }
            if (scannerI) { //Confirms if the scanner is a function - Question 29
                listing[43] = print($('input[type=checkbox][name="q32"]:checked').map(function () { return $(this).attr('id') })); //scanFeats - Question 32
                //alert("Passed the scan features!");
            } else {
                //alert("No need for the other features!");
            }
            listing[44] = document.getElementById("q33").innerText; //overallFunc - Question 33
            //alert("Passed the overall functionality!");
            if ($('input[type=checkbox][name="q34"]:checked').length > 0) {
                listing[45] = print($('input[type=checkbox][name="q34"]:checked').map(function () { return $(this).attr('id') })); //otherFeats - Question 34
                //alert("Passed the other features!");
            } else {
                //alert("No need for the other features!");
            }
            listing[46] = document.getElementById("q36").innerText; //furtherDets - Question 36
            //alert("Passed the further details!");
            //alert(print(listing));
            $.ajax({
                type: "POST",
                url: "WebService.asmx/SaveRequest",
                dataType: "json",
                data: JSON.stringify({ 'values' : listing }),
                contentType: "application/json; charset=utf-8",
                success: function (data, status, xhr) {
                    document.getElementById("signInTicket").innerText = "" + data.d[1];
                    alert("data.d: " + data.d);
                    document.getElementById("signInKey").innerText = (data.d[0] != "-1" ? data.d[0].padStart(6, '0') : "");
                    if (saveBtnType == "saveExitBtn") {
                        var outs = ["loginAccount", "createAccount", "tiredAccount"];
                        for (var i = 0; i < outs.length; i++)
                            document.getElementById(outs[i]).style.display = "none";
                        document.getElementById("saveExRes").style.display = "grid";
                    } else if (saveBtnType != "loadRequest")
                        closePopup();
                    errorMsg("Your request has been successfully saved.", false);
                },
                error: function (xhr, status, error) {
                    //var errMsg = JSON.parse(xhr.responseText);
                    //alert(xhr.responseText);
                    errorMsg("An error occurred while trying to save your request. Please try again!", true);
                }
            });
        }
        function sha512(str) {
            return crypto.subtle.digest("SHA-512", new TextEncoder("utf-8").encode(str)).then(buf => {
                return Array.prototype.map.call(new Uint8Array(buf), x => (('00' + x.toString(16)).slice(-2))).join('');
            });
        }
        function randKey() {
            var key = "";

            return key;
        }
        function siDDVis() {
            document.getElementById("userDD").style.display = "grid";
            document.getElementById("myAcc").style.gridTemplateRows = "20px repeat(8, 1fr) 20px";
            document.getElementById("accPic").style.gridRow = "2 / 6";
            var lineI = 6;
            var list = ["signInBar", "signInLoad", "signInAcc", "signInStat"];
            for (var i = 0; i < list.length; i++) {
                document.getElementById(list[i]).style.display = "inline-block";
                document.getElementById(list[i]).style.gridRow = "" + lineI + " / " + (lineI + 1);
                lineI++;
            }
            document.getElementById("signInStat").value = "Sign Out";
        }
        function print(array) {
            var result = "[";
            for (var i = 0; i < array.length - 1; i++)
                result += array[i] + ",";
            return result + array[array.length - 1] + "]";
        }
        function requests() {
            alert("I am in the selection change!");
            var selected = $('input[type=checkbox][name="req"]:checked');
            alert("selected.length: " + selected.length);
            document.getElementById("saveToRequest").disabled = (selected.length < 1 || selected.length > 1);
        }
        function deleteReq() {
            var selected = $('input[type=checkbox][name="req"]:checked').map(function () { return $(this).attr('id') }).get();
            alert(selected);
            if (selected.length > 0) {
                alert("I am in the delete method!");
                var results = [];
                for (var i = 0; i < selected.length; i++)
                    results[i] = selected[i].substr(2);
                alert(results);
                $.ajax({
                    type: "POST",
                    url: "WebService.asmx/DeleteTicket",
                    dataType: "json",
                    data: JSON.stringify({ 'tickets': results }),
                    contentType: "application/json; charset=utf-8",
                    success: function (data, status, xhr) {
                        alert("I am deleting request(s)!");
                        for (var i = 0; i < selected.length; i++) {
                            var indexI = document.getElementById("reqTable").innerHTML.indexOf(results[i]);
                            var indexJa = document.getElementById("reqTable").innerHTML.substr(0, indexI).lastIndexOf("<tr");
                            var indexJb = document.getElementById("reTable").innerHTML.substr(indexI).indexOf("</tr>");
                            document.getElementById("reqTable").innerHTML = document.getElementById("reqTable").substr(0, indexJa) + document.getElementById("reqTable").substr(indexJb + indexI + 5);
                        }
                    },
                    error: function (xhr, status, error) {
                        alert("An error when trying to delete request(s).");
                    }
                });
            } else {
                errorMsg("No ticket was selected. Please try again!", true);
            }
        }
        window.onclick = function (event) {
            if (event.target == document.getElementById("modal"))
                closePopup();
        }
        $('input[name="q11"]').on('change', function () {
            if ($(this).attr('type') == 'radio') {
                if ($(this).prop('checked')) {
                    $('input[name="q11"][type="checkbox"]').prop("checked", false);
                }
            } else {
                if ($(this).prop('checked')) {
                    $('input[name="q11"][type="radio"]').prop('checked', false);
                }
            }
        })
    </script>
</body>
</html>
