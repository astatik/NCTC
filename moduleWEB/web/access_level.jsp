<%@ page import="java.util.Collection" %>
<%-- 22:04 09.05.2015 by Viktor Taranenko --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

</head>
<body onload="getAccessLevels()">
<script>
    document.write('<h1 style="text-align: center">Choose access level</h1><br>');
    document.write('<p id="accessLevel" style="text-align: center"></p>');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="js/accesslevel.js"></script>
</body>
</html>
