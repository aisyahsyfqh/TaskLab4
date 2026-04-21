<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 4:25:23 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insurance Quotation Result</title>
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
                max-width: 600px;
                margin: auto;
            }
            .info-group {
                margin-bottom: 15px;
                padding: 8px 0;
                border-bottom: 1px dashed #e0e0e0;
            }
            .info-group label {
                font-weight: 600;
                color: #555;
                min-width: 160px;
                display: inline-block;
            }
            .info-group p {
                display: inline-block;
                margin: 0;
                color: #333;
                font-weight: 500;
            }
            .btn-back {
                display: inline-block;
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #6f42c1;
                color: #fff;
                text-decoration: none;
                border-radius: 4px;
                font-weight: bold;
            }
            .btn-back:hover {
                background-color: #5a32a3;
            }
        </style>
    </head>
    <body>
        <h1>Insurance Quotation Result</h1>
        <div class="card">
            <%
                // Retrieve form data
                String icno = request.getParameter("icno");
                String name = request.getParameter("name");
                String coverage = request.getParameter("coverage");
                String ncdStr = request.getParameter("ncd");
                double price = 0;
                double ncd = 0;
                try {
                    price = Double.parseDouble(request.getParameter("price"));
                    ncd = Double.parseDouble(ncdStr);
                } catch (Exception e) {
                    price = 0;
                    ncd = 0;
                }

                // Business Logic
                double rate = 0;
                String coverageDisplay = "";
                if ("comprehensive".equals(coverage)) {
                    rate = 0.05; // 5%
                    coverageDisplay = "Comprehensive";
                } else {
                    rate = 0.03; // 3%
                    coverageDisplay = "Third Party";
                }

                // Base insurance calculation
                double insurance = price * rate;

                // Apply NCD discount
                double discount = insurance * ncd;
                double afterNCD = insurance - discount;

                // Add 8% SST
                double sst = afterNCD * 0.08;
                double finalAmount = afterNCD + sst;
            %>

            <!-- Display results -->
            <div class="info-group">
                <label>IC No:</label>
                <p><%= icno%></p>
            </div>
            <div class="info-group">
                <label>Name:</label>
                <p><%= name%></p>
            </div>
            <div class="info-group">
                <label>Coverage Type:</label>
                <p><%= coverageDisplay%></p>
            </div>
            <div class="info-group">
                <label>Market Price (RM):</label>
                <p><%= String.format("%.2f", price)%></p>
            </div>
            <div class="info-group">
                <label>Insurance Premium (RM):</label>
                <p><%= String.format("%.2f", insurance)%></p>
            </div>
            <div class="info-group">
                <label>NCD Discount (RM):</label>
                <p><%= String.format("%.2f", discount)%></p>
            </div>
            <div class="info-group">
                <label>After NCD (RM):</label>
                <p><%= String.format("%.2f", afterNCD)%></p>
            </div>
            <div class="info-group">
                <label>SST 8% (RM):</label>
                <p><%= String.format("%.2f", sst)%></p>
            </div>
            <div class="info-group">
                <label>Final Amount (RM):</label>
                <p><%= String.format("%.2f", finalAmount)%></p>
            </div>

            <a href="insuranceQuotation.jsp" class="btn-back">Back</a>
        </div>
    </body>
</html>

