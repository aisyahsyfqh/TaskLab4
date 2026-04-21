<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2026, 4:20:00 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insurance Quotation</title>
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
            .form-group {
                margin-bottom: 15px;
            }
            label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
                color: #555;
            }
            input, select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-sizing: border-box;
            }
            .button-group {
                margin-top: 20px;
                display: flex;
                gap: 10px;
            }
            .btn {
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
            }
            .btn-submit {
                background-color: #6f42c1;
                color: #fff;
            }
            .btn-submit:hover {
                background-color: #5a32a3;
            }
            .btn-cancel {
                background-color: #e0e0e0;
                color: #333;
            }
            .btn-cancel:hover {
                background-color: #ffcccc;
            }
        </style>
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <div class="card">
            <form action="processInsuranceQuo.jsp" method="post">

                <!-- IC Number -->
                <div class="form-group">
                    <label for="icno">IC No*</label>
                    <input type="text" id="icno" name="icno" placeholder="E.g. 821210-05-3478" required>
                </div>

                <!-- Name -->
                <div class="form-group">
                    <label for="name">Name*</label>
                    <input type="text" id="name" name="name" placeholder="Enter name" required>
                </div>

                <!-- Market Price -->
                <div class="form-group">
                    <label for="price">Market Price*</label>
                    <input type="number" id="price" name="price" placeholder="Price" required>
                </div>

                <!-- Coverage Type -->
                <div class="form-group">
                    <label for="coverage">Coverage Type*</label>
                    <select id="coverage" name="coverage" required>
                        <option value="thirdparty">Third Party</option>
                        <option value="comprehensive">Comprehensive</option>
                    </select>
                </div>

                <!-- NCD -->
                <div class="form-group">
                    <label for="ncd">No Claims Discount (NCD)*</label>
                    <select id="ncd" name="ncd" required>
                        <option value="0.10">10%</option>
                        <option value="0.20">20%</option>
                        <option value="0.30">30%</option>
                        <option value="0.40">40%</option>
                        <option value="0.50">50%</option>
                    </select>
                </div>

                <!-- Buttons -->
                <div class="button-group">
                    <button type="submit" class="btn btn-submit">Submit</button>
                    <button type="reset" class="btn btn-cancel">Cancel</button>
                </div>

            </form>
        </div>
    </body>
</html>

