<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2026, 3:57:28 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Forwarded User Information</title>
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
            .info-group {
                margin-bottom: 15px;
                padding: 8px 0;
                border-bottom: 1px dashed #e0e0e0;
            }
            .info-group label {
                font-weight: 600;
                color: #555;
                min-width: 140px;
                display: inline-block;
            }
            .info-group p {
                display: inline-block;
                margin: 0;
                color: #333;
                font-weight: 500;
            }
        </style>
    </head>
    <body>
        <h1>Using jsp:forward to display user information</h1>
        <div class="card">
            <%
                // Retrieve forwarded parameters
                String name = request.getParameter("uname");
                String email = request.getParameter("email");
                String nationality = request.getParameter("nationality");
                String background = request.getParameter("background");
            %>
            <h1>Forwarded Info</h1>
            <!-- Display with JSP Expression -->
            <div class="info-group">
                <label>Name:</label>
                <p><%= name%></p>
            </div>
            <div class="info-group">
                <label>Email:</label>
                <p><%= email%></p>
            </div>
            <div class="info-group">
                <label>Nationality:</label>
                <p><%= nationality%></p>
            </div>
            <div class="info-group">
                <label>Background:</label>
                <p><%= background%></p>
            </div>
        </div>
    </body>
</html>
