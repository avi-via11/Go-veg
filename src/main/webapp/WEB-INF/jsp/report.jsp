<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
          crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Report</h1>
        <form action="/report" method="get">
            <div class="mb-3">
                <label for="fromDate" class="form-label">From Date:</label>
                <input type="text" class="form-control" id="fromDate" name="fromDate" required>
            </div>
            <div class="mb-3">
                <label for="toDate" class="form-label">To Date:</label>
                <input type="text" class="form-control" id="toDate" name="toDate" required>
            </div>
            <button type="submit" class="btn btn-primary">Generate Report</button>
        </form>
        
        <table class="table container table-success table-striped mt-4">
            <thead>
                <tr>
                    <th>Sl.No</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity(Kg)</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${details}" varStatus="status">
                    <tr>
                        <td>${status.index + 1}</td>
                        <td>${item.itemName}</td>
                        <td>${item.itemPrice}</td>
                        <td>${item.intemQty}</td>
                        <td>${item.intemQty * item.itemPrice}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
</body>
</html>
