<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Add your custom styles here */
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            max-width: 400px;
            margin: auto;
            margin-top: 100px;
        }
    </style>
</head>
<body>

<div class="container login-container">
    <h2 class="text-center mb-4"><i class="bi bi-person"></i> Login</h2>
    <form>
        <div class="form-group">
            <label for="username">Username:</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="bi bi-person"></i></span>
                </div>
                <input type="text" class="form-control" id="username" placeholder="Enter your username" required>
            </div>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="bi bi-lock"></i></span>
                </div>
                <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
            </div>
        </div>
        <button type="submit" class="btn btn-primary btn-block"><i class="bi bi-box-arrow-in-right"></i> Login</button>
    </form>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
