<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 2:35:43 pm
    Author     : ASUS
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Customer Discount Result</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f7f6;
                margin: 0;
                padding: 20px;
            }
            .container {
                max-width: 900px;
                margin: 0 auto;
            }
            h1 {
                font-size: 1.5rem;
                color: #333;
                margin-bottom: 20px;
                border-left: 5px solid #6f42c1;
                padding-left: 10px;
            }
            .result-box {
                background: #ffffff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            }
            .result-group {
                margin-bottom: 15px;
                padding: 8px 0;
                border-bottom: 1px dashed #e0e0e0;
            }
            .result-group label {
                font-weight: 600;
                color: #555;
                min-width: 140px;
                display: inline-block;
            }
            .result-group p {
                display: inline-block;
                margin: 0;
                color: #333;
                font-weight: 500;
            }
            .btn-back {
                background-color: #6f42c1;
                color: white;
                border: none;
                padding: 10px 25px;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
                transition: 0.3s;
                margin-top: 20px;
                display: inline-block;
                text-decoration: none;
            }
            .btn-back:hover {
                background-color: #5a32a3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Customer Discount Result</h1>
            <div class="result-box">
                <%
                    final double price = 10.0;
                    // Retrieve form data
                    String cust_no = request.getParameter("customerCode");
                    String cust_type = request.getParameter("customerType");
                    int quantity = 0;
                    try {
                        quantity = Integer.parseInt(request.getParameter("quantity"));
                    } catch (Exception e) {
                        quantity = 0;
                    }
                    // Business logic
                    double total = 0;
                    String message = "";
                    if (cust_type.equals("1") && quantity > 100) {
                        message = "You're entitled to 10% discount";
                        total = quantity * price * 0.9;
                    } else if (cust_type.equals("2") && quantity > 100) {
                        message = "You're entitled to 25% discount";
                        total = quantity * price * 0.75;
                    } else {
                        message = "You're not entitled to any discount";
                        total = quantity * price;
                    }
                    // Display customer type
                    String custTypeDisplay = cust_type.equals("1")
                            ? "Normal Customer" : "Privilege Customer";
                %>

                <div class="result-group">
                    <label>Customer Code:</label>
                    <p><%= cust_no%></p>
                </div>
                <div class="result-group">
                    <label>Customer Type:</label>
                    <p><%= custTypeDisplay%></p>
                </div>
                <div class="result-group">
                    <label>Quantity:</label>
                    <p><%= quantity%></p>
                </div>
                <div class="result-group">
                    <label>Total Price:</label>
                    <p><%= total%></p>
                </div>
                <div class="result-group">
                    <label>Message:</label>
                    <p><%= message%></p>
                </div>

                <a href="customer.html" class="btn-back">Back</a>
            </div>
        </div>
    </body>
</html>
