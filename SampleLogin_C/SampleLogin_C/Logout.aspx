<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="SampleLogin_C.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    <div id="blank">
        <h1 id="success"></h1>
    </div>
</body>
    <script>
        window.onload = function () {
            setTimeout(function () {
                var url = window.location.href;
                window.history.go(-window.history.length);
                window.location.replace(document.referrer);
                //window.location.href = "user.aspx";
            }, 2000);
        };
    </script>
</html>
