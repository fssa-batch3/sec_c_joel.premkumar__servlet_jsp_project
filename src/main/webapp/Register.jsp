<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <!-- Add Custom CSS for Black and White Theme -->
    <style>
        body {
            background-color: #000;
            color: #fff;
            font-family: Arial, sans-serif;
        }
        .container {
            text-align: center;
            margin-top: 100px;
        }
        .card {
            background-color: #fff;
            color: #000;
            border: none;
        }
        .card-header {
            background-color: #000;
            color: #fff;
            border-bottom: 2px solid #fff;
        }
        .form-control {
            background-color: #fff;
            color: #000;
        }
        .btn-primary {
            background-color: #000;
            border-color: #fff;
            color: #fff;
            transition: background-color 0.2s, color 0.2s;
        }
        .btn-primary:hover {
            background-color: #fff;
            color: #000;
        }
    </style>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center">User Registration</h1>
                    </div>
                    <div class="card-body">
                        <form action="RegisterUserServlet" method="post">
                            <div class="form-group">
                                <label for="fullName">Full Name:</label>
                                <input type="text" class="form-control" name="fullName" required>
                            </div>
                            
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number:</label>
                                <input type="text" class="form-control" name="phoneNumber" required>
                            </div>

                            <div class="form-group">
                                <label for="emailId">Email:</label>
                                <input type="email" class="form-control" name="emailId" required>
                            </div>

                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" name="password" required>
                            </div>

                            <div class="text-center mt-3">
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JS (optional) -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
