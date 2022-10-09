<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ella.aspx.cs" Inherits="SampleLogin_C.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        * {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
        }
        .EllaTextResponse {
            grid-column: 1 / 2;
            margin: 15px 15px 15px 25px;
            padding: 10px;
            width: fit-content;
            max-width: 450px;
            background-color: green;
            border-radius: 10px;
            color: white;
            position: relative;
            opacity: 0;
            justify-self: start;
        }
        .EllaTextResponse h2, .MeTextResponse h2 {
            padding: 0;
            margin: 0;
            font-size: 1em;
        }
        .MeTextResponse {
            grid-column: 2 / 3;
            margin: 15px 25px 15px 15px;
            padding: 10px;
            width: fit-content;
            max-width: 450px;
            background-color: blue;
            border-radius: 10px;
            color: white;
            position: relative;
            opacity: 0;
            justify-self: end;
        }
        .submitBar {
            position: absolute;
            display: grid;
            grid-template-columns: 95% auto;
            align-items: center;
            justify-content: end;
            top: 85%;
            height: auto;
            width: 80%;
            left: 10%;
            margin: 0;
            padding: 0;
        }
        .TextingBox {
            grid-column: 1 / 2;
            height: 24px;
            border: 1px solid lightgrey;
            font-size: 18px;
            padding: 10px;
            border-radius: 8px;
            overflow-y: auto;
            overflow-wrap: normal;
        }
        .EnterBtn {
            grid-column: 2 / 3;
            color: lightblue;
            font-size: 40px;
            background: transparent;
            border: 1px solid transparent;
        }
        .EnterBtn:hover {
            color: cornflowerblue;
        }
        .TextingBox:hover {
            border: 2px solid grey;
        }
        .GridHistory {
            display: grid;
            grid-template-columns: 1fr 1fr;
            height: auto;
        }
        .TextBoxHistory {
            position: absolute;
            top: 10%;
            width: 80%;
            left: 10%;
            border-radius: 8px;
            height: 74.5%;
            border: 1px solid darkgrey;
            overflow-y: auto;
            overflow-x: no-display;
        }
        .EllaLip:before {
            content: "";
            width: 0px;
            height: 0px;
            position: absolute;
            border-left: 10px solid transparent;
            border-right: 10px solid green;
            border-top: 4px solid green;
            border-bottom: 4px solid transparent;
            left: -19px;
            top: 8px;
        }
        .MeLip:After {
            content: "";
            width: 0px;
            height: 0px;
            position: absolute;
            border-left: 10px solid blue;
            border-right: 10px solid transparent;
            border-top: 4px solid blue;
            border-bottom: 4px solid transparent;
            right: -19px;
            top: 8px;
        }
        @keyframes ellasResponse {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        @keyframes typingA {
            0% {
                opacity: 0;
            }
            25% {
                opacity: .25;
            }
            50% {
                opacity: .5;
            }
            75% {
                opacity: .75;
            }
            100% {
                opacity: 1;
            }
        }
        @keyframes typingB {
            0% {
                opacity: .25;
            }
            25% {
                opacity: .5;
            }
            50% {
                opacity: .75;
            }
            75% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        @keyframes typingC {
            0% {
                opacity: .5;
            }
            25% {
                opacity: .75;
            }
            50% {
                opacity: 1;
            }
            75% {
                opacity: 0;
            }
            100% {
                opacity: .25;
            }
        }
        @keyframes typingD {
            0% {
                opacity: .75;
            }
            25% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            75% {
                opacity: .25;
            }
            100% {
                opacity: .5;
            }
        }
        .TypingBox {
            grid-row: 1 / 2;
            border-radius: 13px;
            border: 1px solid silver;
            background-color: snow;
            animation: tbAppearance 2s forwards;
            animation-delay: 2s;
            display: inline-block;
            visibility: collapse;
            width: fit-content;
            margin: 0 15px;
        }
        .Circles {
            height: 10px;
            width: 10px;
            border-radius: 10px;
            background-color: blue;
            display: inline-block;
            padding: 5px 5px 5px 5px;
        }
        #c1 {
            animation: typingA .75s infinite;
            margin: 20px .5px 20px 30px;
        }
        #c2 {
            animation: typingB .75s infinite;
            margin: 20px .5px;
        }
        #c3 {
            animation: typingC .75s infinite;
            margin: 20px .5px;
        }
        #c4 {
            animation: typingD .75s infinite;
            margin: 20px 30px 20px .5px;
        }
        @keyframes tbAppearance {
            0% {
                visibility: collapse;
            }
            5% {
                visibility: visible;
            }
            95% {
                visibility: visible;
            }
            100% {
                visibility: collapse;
            }
        }
        @keyframes meMessage {
            0%{

            }
            100% {

            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="historyOverall" class="TextBoxHistory">
            <div id="history" class="GridHistory">
                <div id="r1" class="EllaTextResponse EllaLip">
                    <h2 runat="server" id="r1Text"></h2>
                </div> <!--I stand for Extrapolating Logical Linguistic Answers-->
            </div>
        </div>
        <div class="submitBar">
            <asp:ScriptManager ID="sm1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
            <textarea runat="server" onkeypress="textField" class="TextingBox" id="meTextBox" type="text"></textarea>
            <asp:Button runat="server" class="EnterBtn" ID="enterButton" Text="&#10148;"/>
        </div>
    </form>
    <script>
        var i = 1;
        var j = 2;
        $(window).on('load', function () {
            ellaResponseAnimation('r1');
        });
        $("#<%=enterButton.ClientID %>").click(function () {
            if (document.getElementById("ellaTyping") != null)
                document.getElementById("history").removeChild(document.getElementById("history").childNodes[document.getElementById("history").childNodes.length - 1]);
            var message = $("#meTextBox").val();
            var myDivResp = document.createElement('div');
            var myResp = document.createElement('h2');
            myResp.innerText = message;
            myResp.id = "r2Text";
            myDivResp.appendChild(myResp);
            myDivResp.id = "r2";
            myDivResp.classList.add('MeTextResponse');
            myDivResp.classList.add('MeLip');
            myDivResp.style.gridRow = j + " / " + (j + 1);
            document.getElementById('history').appendChild(myDivResp);
            j++;
            i++;
            if (j - i == 1)
                i++;
            $("#r2").css({
                'animation': 'ellasResponse .75s forwards'
            })
            $.ajax({
                type: "POST",
                url: "WebService.asmx/getMessage",
                data: "{ message: '" + message + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    //alert(r.d);
                    document.getElementById("meTextBox").value = "";
                },
                error: function (r) {
                    alert(r.responseText);
                },
                failure: function (r) {
                    alert(r.responseText);
                }
            });
            return false;
        });
        function ellaResponseAnimation(id) {
            /**$("#ellaTyping").css({
                'animation': 'tbAppearance 2s 1',
                'animation-delay' : '2s'
            });*/
            var typing = document.createElement('div');
            for (var i = 0; i < 4; i++) {
                var circle = document.createElement('div');
                circle.id = "c" + (i + 1);
                circle.classList.add("Circles");
                typing.appendChild(circle);
            }
            typing.id = "ellaTyping";
            typing.classList.add("TypingBox");
            typing.style.gridRow = i + " / " + (i + 1);
            document.getElementById('history').appendChild(typing);
            $("#" + id).css({
                'animation': 'ellasResponse .75s forwards',
                'animation-delay': '4s'
            });
        }
        function textField() {
            if (window.event.keyCode == 13 && $('#meTextBox').val().length > 0) {
                enterBtn();
            }
        }
    </script>
</body>
</html>
