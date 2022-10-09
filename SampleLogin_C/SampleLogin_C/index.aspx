<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SampleLogin_C.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link rel="stylesheet" href="consistent.css" />
        <link rel="shortcut icon" href="/Dry%20Ridge%20Programming%20Title%20Bar_5.jpg" type="image/jpg" sizes="16x16 32x32" />
        <title>Dry Ridge Programming</title>
        <style>
            .fullDiv {
                margin-top: 200px;
                padding: 15px 15px 0px;
                font-size: 30px;
            }
            @media screen and (max-width: 800px) {
                .fullDiv {
                    margin-top: 300px;
                }
            }
        </style>
    </head>
    <body>
        <div id="introduction" style="background-color:#f26722;width:100%;height:100%;">
            <div id="line" style="width:100%;height:100%;"></div>
        </div>
        <div id="fullpage" style="display:none;">
        <div id="out_header" class="header noselection">
            <div id="in_header">
                <div id="gridTitle" class="gridTitle">
                    <div id="letter_1gt" class="gridTitleItem_L" style="color:#f26722; font-size: 3.0em; margin:0; padding:0; grid-column: 1 / span 1;">D</div>
                    <div id="word_1gt" class="gridTitleItem_W" style="color:#f26722; font-size: 1.5em; margin:0; padding:0; grid-column: 2 / span 11;">ry</div>
                    <div id="letter_2gt" class="gridTitleItem_L" style="color: blue; font-size: 3.0em; margin:0; padding:0; grid-column: 1 / span 2;">R</div>
                    <div id="word_2gt" class="gridTitleItem_W" style="color: blue; font-size: 1.5em; margin:0; padding:0; grid-column: 3 / span 10;">idge</div>
                    <div id="letter_3gt" class="gridTitleItem_L" style="color: red; font-size: 3.0em; margin:0; padding:0; grid-column: 1 / span 3;">P</div>
                    <div id="word_3gt" class="gridTitleItem_W" style="color: red; font-size: 1.5em; margin:0; padding:0; grid-column: 4 / span 9;">rogramming</div>
                </div>
                <div id="gridTitleScroll" class="gridTitleScroll" >
                    <div id="letter_1ts" style="display: inline-grid; color:#f26722; font-size: 3.0em;">D</div>
                    <div id="word_1ts" style="display: inline-grid; color:#f26722; font-size: 1.5em;">ry</div>
                    <div id="letter_2ts" style="display: inline-grid; color: blue; font-size: 3.0em;">R</div>
                    <div id="word_2ts" style="display: inline-grid; color: blue; font-size: 1.5em;">idge</div>
                    <div id="letter_3ts" style="display: inline-grid; color: red; font-size: 3.0em;">P</div>
                    <div id="word_3ts" style="display: inline-grid; color: red; font-size: 1.5em;">rogramming</div>
                </div>
                <div id="accountIcon" class="gridItem">
                    <a href="myAccount.html"><i class="material-icons">account_circle</i></a>
                </div>
                <div id="myAccountDP" class="dropdown gridItem">
                    <button id="myAccount" class="dropbtn"><a href="myAccount.html">My Account</a> <i class="fa fa-caret-down" style="color: black;"></i></button>
                    <div class="dropdown-content">
                        <a href="#">Link 1</a>
                        <a href="#">Free Quote</a>
                        <a href="#">History</a>
                        <hr />
                        <a href="#">Sign Out</a>
                    </div>
                </div>
                <h3 id="signUp" class="gridItem"><a href="Register.aspx">Sign Up</a></h3>
                <h3 id="login" class="gridItem"><a onclick="document.getElementById('id01').style.display='block'">Login</a></h3>
                <h3 id="whatWeDoH" class="gridItemB"><a href="#">What We Do</a></h3>
                <h3 id="aboutH" class="gridItemB"><a href="about.html">About Us</a></h3>
                <h3 id="contactH" class="gridItemB"><a href="contact.html">Contact</a></h3>
            </div>
        </div>
        <div id="id01" class="modal">
            <form id="form1" runat="server" class="modal-content animate">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <img src="img_avatar2.png" alt="Avatar" class="avatar" />
                </div>
                <div class="containerB">
                    <label><b>Username</b></label>
                    <asp:Textbox runat="server" id="username" placeholder="Enter Username" required="required"></asp:Textbox>
                    <label for="psw"><b>Password</b></label>
                    <asp:Textbox runat="server" id="password" type="password" placeholder="Enter Password" required="required"></asp:Textbox>
                    <asp:button runat="server" Text="Login" type="submit" onclick="btnLogin_Click"></asp:button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember" /> Remember me
                    </label>
                </div>
                <div class="containerB" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </form>
        </div>
        <div class="fullDiv">
            <div id="mySidenav" class="sidenav">
                <a href="index.html" id="home"><i class="fa fa-home"></i> <strong>Home</strong></a>
                <a href="#" id="blog"><strong>What We Do</strong></a>
                <a href="about.html" id="about"><i class="fa fa-info-circle"></i> <strong>About Us</strong></a>
                <a href="contact.html" id="contact"><i class="fa fa-fw fa-envelope"></i> <strong>Contact</strong></a>
            </div>
            <div class="icon-bar">
                <a href="https://www.facebook.com/tyler.huffman.90038" class="facebook"><i class="fa fa-facebook"></i></a> 
                <a href="#" class="google"><i class="fa fa-google"></i></a> 
                <a href="https://www.linkedin.com/in/tyler-huffman-45296912a/" class="linkedin"><i class="fa fa-linkedin"></i></a>
                <a href="#" class="youtube"><i class="fa fa-youtube"></i></a> 
                <a href="https://github.com/thuffman920" class="github"><i class="fa fa-github-square"></i></a>
            </div>
            <div id="main">
                <img src="Dry%20Ridge%20Programming%20Icon_1.jpg" alt="Dry Ridge Programming" width="185" height="150" class="noselection" />
                <br />
                <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
            <p><br />
                Having trouble deciding how you want to design, code, or implement your software creation? Your worries are over, we are here to help. We specialize in helping you decide the best course of action for implementing, designing, and the appropriate platform.
                <br /><br />
                Are you looking to make an application that will profit your business? Are you having trouble deciding the best programming language for your application? Do you want to develop a website for business? Does your website need a major update? If you answered yes to any of these questions, then you need Dry Ridge Programmming. 
                <br /><br />
                There are hundreds of different programming languages and platforms. So, deciding the best language for your application can be very overwhelming. Well, we come to the rescue by using our expertise and will help decide the appropriate structure and language that will meet your needs. We take the burden off of your shoulders and place them up us. We are the key piece for your business when it comes to any type of application.
                <br /><br />In addition to these sections, a business plan should also have a cover, title page and table of contents.
<br /><br />
How Long Should Your Business Plan Be?<br /><br />
Depending on what you're using it for, a useful business plan can be any length, from a scrawl on the back of an envelope to, in the case of an especially detailed plan describing a complex enterprise, more than 100 pages. A typical business plan runs 15 to 20 pages, but there's room for wide variation from that norm.
<br /><br />
Much will depend on the nature of your business. If you have a simple concept, you may be able to express it in very few words. On the other hand, if you're proposing a new kind of business or even a new industry, it may require quite a bit of explanation to get the message across.
<br /><br />The purpose of your plan also determines its length. If you want to use your plan to seek millions of dollars in seed capital to start a risky venture, you may have to do a lot of explaining and convincing. If you're just going to use your plan for internal purposes to manage an ongoing business, a much more abbreviated version should be fine.
<br /><br />
Who Needs a Business Plan?<br /><br />
About the only person who doesn't need a business plan is one who's not going into business. You don't need a plan to start a hobby or to moonlight from your regular job. But anybody beginning or extending a venture that will consume significant resources of money, energy or time, and that is expected to return a profit, should take the time to draft some kind of plan.
<br /><br />
Startups. The classic business plan writer is an entrepreneur seeking funds to help start a new venture. Many, many great companies had their starts on paper, in the form of a plan that was used to convince investors to put up the capital necessary to get them under way.
<br /><br />
Most books on business planning seem to be aimed at these startup business owners. There's one good reason for that: As the least experienced of the potential plan writers, they're probably most appreciative of the guidance. However, it's a mistake to think that only cash-starved startups need business plans. Business owners find plans useful at all stages of their companies' existence, whether they're seeking financing or trying to figure out how to invest a surplus.
<br /><br />
Established firms seeking help. Not all business plans are written by starry-eyed entrepreneurs. Many are written by and for companies that are long past the startup stage. WalkerGroup/Designs, for instance, was already well-established as a designer of stores for major retailers when founder Ken Walker got the idea of trademarking and licensing to apparel makers and others the symbols 01-01-00 as a sort of numeric shorthand for the approaching millennium. Before beginning the arduous and costly task of trademarking it worldwide, Walker used a business plan complete with sales forecasts to convince big retailers it would be a good idea to promise to carry the 01-01-00 goods. It helped make the new venture a winner long before the big day arrived. "As a result of the retail support up front," Walker says, "we had over 45 licensees running the gamut of product lines almost from the beginning."
            </p>
            </div>
        </div>
        <div id="out_footer" class="footer noselection">
            <div id="in_footer">
                <div class="gridBottomLeft" style="grid-area: gridBottomLeft;">
                    <h3>Helpful Links</h3>
                    <h4><a href="#">Our Procedure</a></h4>
                    <h4><a href="#">What We Do</a></h4>
                    <h4><a href="#">Free Quote</a></h4>
                    <h4><a href="about.html">About</a></h4>
                </div>
                <div class="gridBottomMiddle" style="grid-area: gridBottomMiddle;">
                    <h3>Contact Us</h3>
                    <h4><a href="mailto:info-drp@gmail.com" target="_top"><i class="fa fa-envelope icon"></i> info-drp@gmail.com</a></h4>
                    <h4><a href="tel:+1-828-275-4712"><i class="fa fa-phone"></i> 1 (828) 275-4712</a></h4>
                    <h4><i class="fa fa-map-marker"></i> 71 Herron Cove Road</h4>
                    <h4><i class="fa fa-map-marker" style="visibility: hidden;"></i> Weaverville, NC 28787</h4>
                    <div style="display: inline-grid; grid-template-columns: 60px 60px;">
                        <h4><a class="googleMaps" href="https://goo.gl/maps/5R64txKopNwCQVVVA">Maps</a></h4>
                        <h4><a class="googleMaps" href="https://goo.gl/maps/XdkrYMAfvGAWun6t8">Directions</a></h4>
                    </div>
                </div>
                <div class="gridBottomRight" style="grid-area: gridBottomRight;">
                </div>
                <div class="socialLinks bottom_bar" style="display: grid; grid-template-columns: 50px 50px 50px 50px 50px; justify-content: center; grid-area: bottom_bar;">
                    <a href="https://www.facebook.com/tyler.huffman.90038"><i class="fa fa-facebook"></i></a> 
                    <a href="#"><i class="fa fa-google"></i></a> 
                    <a href="https://www.linkedin.com/in/tyler-huffman-45296912a/"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-youtube"></i></a> 
                    <a href="https://github.com/thuffman920"><i class="fa fa-github-square"></i></a>
                </div>
                <div class="copyright" style="grid-area: note; display: inline-grid; grid-template-rows: 1em 1em; grid-template-columns: 1fr 120px 65px 1fr; justify-self: center; padding-top: 10px; padding-bottom: 10px;">
                    <a class="privacy" href="privacy.html">Privacy Policy</a>
                    <a class="sitemap" href="sitemap.html">Sitemap</a>
                    <h4 style="color: #000; grid-column: 1 / span 4;">
                        <i class="fa fa-copyright"></i>
                        <script type="text/JavaScript">
                            document.write(new Date().getFullYear());
                        </script> Dry Ridge Programming. All rights reserved
                    </h4>
                </div>
            </div>
        </div>
            </div>

        <script>
            // When the user scrolls down 20px from the top of the document, show the button
            window.addEventListener('scroll', scrollTop);
            window.addEventListener('scroll', scrollHeader);
            var modal = document.getElementById('id01');
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            window.onload = function () {
                var introline = "<html>\n<head>\n<title>Home<//title>\n<//head>\n<body>\n<h3>Hello World!<//h3>\n" +
                    "</body>\n<script>\nwindow.onload = function() {\nwindow.location.href = \"index.html\";\n<//script>\n</html>\n\n\nInitializing..."
                var counter = 0;
                id = setInterval(function () {
                    counter++;
                    if (counter >= introline.length) {
                        clearInterval(id);
                        document.getElementById("introduction").style.display = "none";
                        document.getElementsById("fullpage").style.display = "block";
                    } else {
                        $("#line").text(introline.substring(0, counter));
                    }
                }, 2000);
            };
            function scrollTop() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20)
                    document.getElementById("myBtn").style.display = "block";
                else
                    document.getElementById("myBtn").style.display = "none";
            }
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
            function scrollHeader() {
                if (window.innerWidth > 800 && (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100)) {
                    document.getElementById("myAccount").style.fontSize = "1.05em";
                    document.getElementById("signUp").style.fontSize = "1.05em";
                    document.getElementById("login").style.fontSize = "1.05em";
                    document.getElementById("gridTitleScroll").style.display = "block";
                    document.getElementById("gridTitle").style.display = "none";
                } else if (window.innerWidth > 800) {
                    document.getElementById("myAccount").style.fontSize = "1.17em";
                    document.getElementById("signUp").style.fontSize = "1.17em";
                    document.getElementById("login").style.fontSize = "1.17em";
                    document.getElementById("gridTitle").style.display = "grid";
                    document.getElementById("gridTitleScroll").style.display = "none";
                } else if (window.innerWidth <= 800 && (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100)) {
                    document.getElementById("myAccountDP").style.display = "none";
                    document.getElementById("signUp").style.display = "none";
                    document.getElementById("login").style.display = "none";
                    document.getElementById("whatWeDoH").style.display = "none";
                    document.getElementById("aboutH").style.display = "none";
                    document.getElementById("contactH").style.display = "none";
                } else {
                    document.getElementById("myAccountDP").style.display = "inline-block";
                    document.getElementById("signUp").style.display = "block";
                    document.getElementById("login").style.display = "block";
                    document.getElementById("whatWeDoH").style.display = "block";
                    document.getElementById("aboutH").style.display = "block";
                    document.getElementById("contactH").style.display = "block";
                }
            }
        </script>
    </body>
</html>