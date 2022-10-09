// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
function enableTextBox(valueId) {
    var value = valueId.substr(0, valueId.indexOf("o_c"));
    document.getElementById(value + "o_tB").disabled = !document.getElementById(value + "o_tB").disabled;
}
function dropdownAcc(id) {
    var idCheck = (id == "outlineAccPic" || id == "ddArrow" || id == "myAcc" || id == "accPic" || id == "accHead" || id == "accBody" || id == "userDD" ||
        id == "siUserLbl" || id == "signInUser" || id == "siUIDLbl" || id == "signInUID" || id == "siTicketLbl" || id == "signInTicket" || id == "siKeyLbl" ||
        id == "signInKey" || id == "signInBar" || id == "signInAcc" || id == "signInStat" || id == "signInLoad" || id == "signInAcc" || id == "signInStat");
    document.getElementById("myAcc").style.display = (idCheck ? "grid" : "none");
    if (idCheck) {
        document.getElementById("myAcc").style.top = document.getElementById("header").clientHeight + "px";
        document.getElementById("myAcc").style.left = (0.9 * window.innerWidth - 275) + "px";
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
}
function randI(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
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
        var ids = ["copyBtn", "vwpassL", "vwpassC", "vwpassT", "createAccount", "tiredAccount", "genPass", "saveExRes", "errC", "errT", "errL"];
        for (var i = 0; i < ids.length; i++)
            document.getElementById(ids[i]).style.display = "none";
        document.getElementById("loginAccount").style.display = "grid";
    }
    document.getElementById('modal').style.display = "none";
    for (var i = 0; i < types.length; i++)
        document.getElementById(types[i] + "Popup").style.display = "none";
    document.getElementById("titlePopup").innerText = "";
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
    if (curId == "copyBtn" && prevLoc == "tiredGen") {
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
        var atSignI = value.indexOf('@@');
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
        data: JSON.stringify({ 'values': listing }),
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