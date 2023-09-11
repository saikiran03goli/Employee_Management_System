<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
    <style>
        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        h1 {
            margin: 0;
            font-size: 36px;
        }

        nav {
            background-color: #444;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            margin: 10px;
            font-size: 18px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .welcome {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .employee-list {
            list-style: none;
            padding: 0;
        }

        .welcome {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .employee-list {
            list-style: none;
            padding: 0;
        }

        .employee-item {
            border: 1px solid #ddd;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .employee-item:hover {
            background-color: #e5e5e5;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        

       
    </style>
</head>
<body>
<header>
    <h1>Employee Management System</h1>
</header>
<nav>
    <a href="/">Home</a>
    <a href="/get"> Get Employee</a>
    <a href="/req1">Add Employee</a>
    <a href="/req4">About</a>
</nav>
<div class="container">
    <h1>Employee Details</h1>
    <table>
        <tr>
            <th>Employee Id</th>
            <th>Employee Name</th>
            <th>Department</th>
            <th>Designation</th>
            <th>Salary</th>
            <th>Action</th>
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.empId}</td>
                <td>${employee.empName}</td>
                <td>${employee.department}</td>
                <td>${employee.designation}</td>
                <td>${employee.salary}</td>
                <td>
                    <a href="/update/${employee.empId}">Update</a> |
                    <a href="/delete/${employee.empId}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
