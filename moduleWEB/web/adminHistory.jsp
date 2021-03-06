<%--
  Created by IntelliJ IDEA.
  User: Juger
  Date: 18.05.2015
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" ng-app="nctc">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>YATS</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/admin-style.css" rel="stylesheet">

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
    <div class="header-text">
        <h1 id="name-line"></h1>
        <h5 id="phone-line"></h5>
        <h5 id="email-line"></h5>
    </div>

    <div class="header-logout" id="logout-button">
        <h2>Log Out</h2>
    </div>
</div>
<!--orders-->
<div class="orderspanel" id="thepanel">
    <div class="button" align="center">
        <button style="width:100px;height:35px"></button>
        <button style="width:100px;height:35px"></button>
    </div>
</div>


<div class="Table">
    <!--<table border="2" width="80%"  align="center" height="80%" style="margin-top: 120px;">-->
    <!--<tr>-->
    <!--<td width="60" class="role" >-->
    <!--Title 1-->
    <!--</td>-->
    <!--<td  class="name">-->
    <!--Title 2-->
    <!--</td>-->
    <!--<td class="group">-->
    <!--Title 3-->
    <!--</td>-->
    <!--<td >-->
    <!--Title 3-->
    <!--</td>-->
    <!--</tr>-->
    <!--<tr height="100">-->
    <!--<td class="role">-->
    <!--Row 1-->
    <!--</td>-->
    <!--<td class="name" >-->
    <!--Row 1-->
    <!--</td>-->
    <!--<td class="group">-->
    <!--Row 1-->
    <!--</td >-->
    <!--<td >-->
    <!--Title 3-->
    <!--</td>-->
    <!--</tr>-->
    <!--<tr height="100">-->
    <!--<td class="role">-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td class="name">-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td class="group">-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td>-->
    <!--Title 3-->
    <!--</td>-->
    <!--</tr>-->
    <!--<tr height="100">-->
    <!--<td class="role" >-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td class="name">-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td class="group">-->
    <!--Row 2-->
    <!--</td>-->
    <!--<td>-->
    <!--Title 3-->
    <!--</td>-->
    <!--</tr>-->
    <!--<tr height="100">-->
    <!--<td  class="role">-->
    <!--Row 3-->
    <!--</td>-->
    <!--<td class="name">-->
    <!--Row 3-->
    <!--</td>-->
    <!--<td class="group">-->
    <!--Row 3-->
    <!--</td>-->
    <!--<td>-->
    <!--Title 3-->
    <!--</td>-->
    <!--</tr>-->
    <!--</table>-->
</div>
<h4>CURRENT ORDERS</h4>
</div>

<!--footer-->
<div class="footer">

    <div class="button" id="leftButton">
        HISTORY
    </div>
    <div class="button" id="centralButton">
        MAKE ORDER
    </div>
    <div class="button" id="rightButton">
        SETTINGS
    </div>

</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="js/cookie.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/admin-users-table.js"></script>
<script src="js/userdatabyuuid.js"></script>

</body>
</html>