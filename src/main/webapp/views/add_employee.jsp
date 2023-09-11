<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <style>
        /* Global styles */
         body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

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
            max-width: 600px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Custom styles for specific sections */
        header h1 {
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

        .welcome {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Add specific styles for the form if needed */
        form {
            /* Add your form-specific styles here */
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
          <header>
            <h1>Add Employee</h1>
        </header>
        <div class="container">
            <form action="/add" method="post">
                <label for="empId">Employee Id:</label>
                <input type="text" id="empId" name="empId" required>
                <label for="empName">Employee Name:</label>
                <input type="text" id="empName" name="empName" required>
                <label for="designation">Employee Designation:</label>
                <input type="text" id="designation" name="designation" required>
                <label for="department">Employee Department:</label>
                <input type="text" id="department" name="department" required>
                <label for="salary">Employee Salary:</label>
                <input type="number" id="salary" name="salary" required>
                <button type="submit">Add Employee</button>
            </form>
        </div>
    </div>
</body>
</html>
