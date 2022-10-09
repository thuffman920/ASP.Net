<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testIntro.aspx.cs" Inherits="SampleLogin_C.testIntro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        body {
            background-color: black;
            display: block;
        }
        #line, #initialize, #loadingLine, #linuxRunLine, #line1, #line2, #line3, #line4, #line5, #line6, #line7, #line8, #line9, #line10, #line11, #line12 {
            width: 100%;
            height: 100%;
            color: #f26722;
        }
        #line1, #line2, #line3, #line4, #line5, #line6, #line7, #line8, #line9, #line10, #line11, #line12, #runLine1, 
        #runLine2, #runLine3, #runLine4, #runLine5, #runLine6, #runLine7, #runLine8, #runLine9, #runLine10, #runLine11, 
        #runLine12, #linuxRunLine, #runLineXXLarge, #initialize, #loadingLine, #runLineLarge {
            margin-top: 0;
            padding: 0;
            margin-left: 0;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <div id="linuxWindow" style="border-left: 2px solid white;border-bottom: 2px solid white;border-right: 2px solid white;border-top: 30px solid white;width:50%;margin-left:25%;margin-top:12.5%;height:50%;">
        <pre id="runLineA" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLineB" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLineC" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLineD" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLineXXLarge" style="font-size:xx-large;"">

</pre>
        <br id="myBreak1" />
        <pre id="runLineLarge" style="font-size:larger;">

</pre>
        <pre id="runLine1" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine2" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine3" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine4" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine5" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine6" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine7" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine8" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine9" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine10" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine11" style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="runLine12"style="margin-left:5%;font-size:medium;">

</pre>
        <pre id="linuxRunLine" style="margin-left:4%;font-size:x-large;">root@~/> </pre>
        <pre id="loadingLine" style="margin-left:5%;font-size:larger;display:none;">Loading, Please Wait...</pre>
        <pre id="line1" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line2" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line3" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line4" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line5" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line6" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line7" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line8" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line9" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line10" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line11" style="margin-left:5%;font-size:medium;"></pre>
        <pre id="line12" style="margin-left:5%;font-size:medium;"></pre>
        <br id="myBreak2" style="display:none;"/>
        <pre id="initialize" style="margin-left:5%;font-size:xx-large;display:none;"></pre>
    </div>
    <div id="helloWorld" style="margin-top:25%;margin-left:45%;display:none;">
        <h1 style="color:#f26722;">Hello World!</h1>
    </div>
    <div id="drplogo" style="position:fixed;bottom:20px;right:20px;">
        <img width="80" height="80" src="Dry Ridge Programming Title Bar_6.jpg" style="opacity:50%;" />
    </div>
</body>
    <script>
        var introline = "run index.html";
        var counter = -1;
        var id;
        id = setInterval(function () {
            counter++;
            if (counter >= introline.length)
                clearInterval(id);
            else
                document.getElementById("linuxRunLine").innerText += introline.charAt(counter);
        }, 30);
        window.onload = function () {
            setTimeout(function () {
                document.getElementById("runLineLarge").style.display = "none";
                document.getElementById("loadingLine").style.display = "block";
                var blink = document.getElementById('loadingLine');
                setInterval(function () {
                    blink.style.opacity = (blink.style.opacity == 0 ? 1 : 0);
                }, 500);
            }, 750);
            setTimeout(function () {
                var introline = "<html>\n\t<head>\n\t\t<title>Home</title>\n\t</head>\n\t<body>\n\t\t<h1>Hello World!</h1>\n" +
                    "\t</body>\n\t<script>\n\t\twindow.onload = function() {\n\t\t\twindow.location.href = \"index.html\";\n\t" +
                    "<\/script>\n</html>";
                var counter = -1;
                var newLineCtr = 0;
                var removeAbove = true;
                var id;
                id = setInterval(function () {
                    counter++;
                    if (counter >= introline.length)
                        clearInterval(id);
                    else {
                        var charValue = introline.charAt(counter);
                        if (charValue != '\n' && charValue != '\t') {
                            if (removeAbove) {
                                removeAbove = false;
                                document.getElementById("runLine" + (12 - newLineCtr)).innerText = "";
                            }
                            document.getElementById("line" + (newLineCtr + 1)).innerText += charValue;
                        } else if (charValue == '\t') {
                            if (removeAbove) {
                                removeAbove = false;
                                document.getElementById("runLine" + (12 - newLineCtr)).innerText = "";
                            }
                            document.getElementById("line" + (newLineCtr + 1)).innerText += "    ";
                        } else {
                            newLineCtr++;
                            removeAbove = true;
                        }
                    }
                }, 15);
            }, 2000);
            setTimeout(function () {
                document.getElementById("loadingLine").innerText = "\n";
            }, 5500);
            initialize();
        };
        function initialize() {
            setTimeout(function () {
                document.getElementById("runLineXXLarge").innerText = "";
                document.getElementById("initialize").innerText = "Initializing";
                document.getElementById("myBreak1").style.display = "none";
                document.getElementById("myBreak2").style.display = "block";
                document.getElementById("initialize").style.display = "block";
                var introline = "...";
                var counter = -1;
                var ctrcounter = 0;
                var id;
                id = setInterval(function () {
                    counter++;
                    if (counter >= introline.length && ctrcounter >= 2) {
                        clearInterval(id);
                        document.getElementById("linuxWindow").style.display = "none";
                        document.getElementById("helloWorld").style.display = "block";
                        document.getElementById("initialize").innerText = "";
                        setTimeout(function () {
                            window.location.href = "index.aspx";
                        }, 1000);
                    } else if (counter >= introline.length) {
                        counter = -1;
                        ctrcounter++;
                        document.getElementById("initialize").innerText = "Initializing";
                    } else
                        document.getElementById("initialize").innerText += introline.charAt(counter);
                }, 150);
            }, 6000);
        }
    </script>
</html>
