<%-- 
    Document   : jspParameter
    Created on : 21 Apr 2026, 3:27:27 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Using JSP Standard Action</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f7f6;
                margin: 0;
                padding: 20px;
            }
            h1 {
                font-size: 1.5rem;
                color: #333;
                margin-bottom: 20px;
                border-left: 5px solid #6f42c1;
                padding-left: 10px;
            }
            .card {
                background: #ffffff;
                padding: 25px;
                border-radius: 8px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            }
        </style>
    </head>
    <body>
        <h1>Using jsp:include and jsp: param to display information on JSP Page</h1>

        <div class="card">
            <%
                // Define subject information
                String sCode = "CSE3023";
                String sSubject = "Web-based Application Development";
                String sCredit = "3(2+1)";
            %>

            <!-- Include subjectInfo.jsp and pass parameters -->
            <jsp:include page="subjectInfo.jsp" flush="true">
                <jsp:param name="code" value="<%= sCode%>" />
                <jsp:param name="subject" value="<%= sSubject%>" />
                <jsp:param name="credit" value="<%= sCredit%>" />
            </jsp:include>
        </div>

    </body>
</html>


