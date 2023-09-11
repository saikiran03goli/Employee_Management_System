<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Add your CSS styles here */
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

       
        table {
            width: 100%;
        }

        table td {
            padding: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 5px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
<header>
    <h1>Employee Management System</h1>
</header>
<nav>
    <a href="/">Home</a>
    <a href="/get">Get Employee</a>
    <a href="/req1">Add Employee</a>
    <a href="/req4">About</a>
</nav>
<div class="container">
    <div class="welcome">
        <form:form method="POST" action="/updateEmp">
            <table>
                <tr>
                    <td></td>
                    <td><form:hidden path="empId"/></td>
                </tr>
                <tr>
                    <td>Employee Name:</td>
                    <td><form:input path="empName"/></td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td><form:input path="department"/></td>
                </tr>
                <tr>
                    <td>Designation:</td>
                    <td><form:input path="designation"/></td>
                </tr>
                <tr>
                    <td>Salary:</td>
                    <td><form:input path="salary"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update"/></td>
                </tr>
            </table>
        </form:form>
        <a href="/get">View Employee Details</a><p></p>
        <a href="/req1">Add Employee</a><p></p>
    </div>
</div>
</body>
</html>
