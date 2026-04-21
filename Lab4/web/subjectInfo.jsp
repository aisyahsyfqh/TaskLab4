<%-- 
    Document   : subjectInfo
    Created on : 21 Apr 2026, 3:29:03 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Subject Information</title>
    </head>
    <body>
        <h1>Calling SubjectInfo.jsp Page</h1>
        <p>Code: <%= request.getParameter("code")%></p>
        <p>Subject: <%= request.getParameter("subject")%></p>
        <p>Credit: <%= request.getParameter("credit")%></p>

    </body>
</html>
