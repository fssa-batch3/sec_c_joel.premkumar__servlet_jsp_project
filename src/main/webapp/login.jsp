<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add Custom Styles for Black and White Theme -->
    <style>
        body {
            background-color: #000;
            color: #fff;
        }
        .card {
            background-color: #fff;
            color: #000;
        }
        .card-header {
            background-color: #000;
            color: #fff;
        }
        .btn-primary {
            background-color: #000;
            border-color: #fff;
        }
        .btn-primary:hover {
            background-color: #fff;
            color: #000;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h1 class="text-center">User Profile</h1>
                    </div>
                    <div class="card-body">
                        <form action="UpdateUserServlet" method="post">
                            <div class="form-group">
                                <label for="emailId">Email:</label>
                                <input type="email" class="form-control" name="emailId"  required>
                            </div>

                            <div class="form-group">
                                <label for="phoneNumber">Phone Number:</label>
                                <input type="text" class="form-control" name="phoneNumber"  required>
                            </div>

                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" name="password"  required>
                            </div>

                            <div class="text-center mt-3">
                                <button type="submit" class="btn btn-primary">Update Profile</button>
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
