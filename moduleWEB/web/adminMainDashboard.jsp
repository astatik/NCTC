<%--
  Created by IntelliJ IDEA.
  User: Juger
  Date: 14.05.2015
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" ng-app="nctc">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>YATS</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/customer-style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="container">

<!--header-->
<div class="header">
    <!--RENAME CLASS AND ID ACCORDING TO TEAM CONVENTION-->
    <div class="header-text">
        <!--HARDCODED for now. AngularJS script will operate this section later-->
        <h1 id="name-line">Hello, User!</h1>
        <h5 id="phone-line">default phone number: 0937776661</h5>
        <h5 id="email-line">default e-mail: user_ko@gmail.com</h5>
    </div>
    <!--RENAME CLASS AND ID ACCORDING TO TEAM CONVENTION-->
    <div class="header-logout" id="logout-button">
        <h2>Log Out</h2>
    </div>
</div>

<!--Main section. On this particular page Taxi Orders appear in this section in form of divs.
blocks contain brief information about order-->
<div class="mainSection" id="customerOrdersPanel">
    <div class="button" id="orderHistory">
        ORDER HISTORY
    </div>
    <div class="button" id="makeReport">
        MAKE REPORT
    </div>
    <div class="button" id="setting">
        SETTINGS
    </div>
    <div class="button" id="assetManagement">
        ASSETS MANAGEMENT
    </div>
    <div class="button" id="fareManagement">
        FARE MANAGEMENT
    </div>

</div>


<!--footer-->
<div class="footer">

</div>
<!--scripts provided by Bootstrap-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--script check life cookie, end delete cookie on click logout-button-->
<script src="js/cookie.js" type="text/javascript"></script>
<!--script for menu batton-->
<script src="js/admin-dashboard.js" type="text/javascript"></script>
</body>