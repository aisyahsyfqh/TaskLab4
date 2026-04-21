<%-- 
    Document   : processCurrency
    Created on : 21 Apr 2026, 3:09:18 pm
    Author     : ASUS
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Currency Conversion Result</title>
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
                min-width: 200px;
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
            <h1>Conversion Result</h1>
            <div class="result-box">
                <%!
                    // Define constant exchange rates
                    final double USD = 0.25;
                    final double EURO = 0.21;
                    final double JPY = 40;
                    final double SGD = 0.32;

                    // Method to calculate conversion
                    private double calculateRate(String currency, int amount) {
                        double currencyChange = 0.0;
                        if (currency != null) {
                            if (currency.equals("1")) {
                                currencyChange = amount * USD;
                            } else if (currency.equals("2")) {
                                currencyChange = amount * EURO;
                            } else if (currency.equals("3")) {
                                currencyChange = amount * JPY;
                            } else {
                                currencyChange = amount * SGD;
                            }
                        }
                        return currencyChange;
                    }
                %>

                <%
                    // Scriptlet: retrieve input
                    String currencyType = request.getParameter("currencyType");
                    String amountRaw = request.getParameter("amount");
                    int amount = 0;
                    double total = 0;
                    try {
                        if (amountRaw != null) {
                            amount = Integer.parseInt(amountRaw);
                            total = calculateRate(currencyType, amount);
                        }
                    } catch (Exception e) {
                        amount = 0;
                    }

                    // Determine currency name
                    String currencyName = "N/A";
                    if ("1".equals(currencyType))
                        currencyName = "USD";
                    else if ("2".equals(currencyType))
                        currencyName = "EURO";
                    else if ("3".equals(currencyType))
                        currencyName = "JPY";
                    else if ("4".equals(currencyType))
                        currencyName = "SGD";
                %>

                <!-- Expression: display output -->
                <div class="result-group">
                    <label>Amount in Ringgit Malaysia (RM):</label>
                    <p>RM <%= amount%></p>
                </div>
                <div class="result-group">
                    <label>Converted to (<%= currencyName%>):</label>
                    <p><%= String.format("%.2f", total)%></p>
                </div>

                <a href="currencyConversion.html" class="btn-back">Back to Converter</a>
            </div>
        </div>
    </body>
</html>
