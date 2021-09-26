<html>
    <head>
        <title>Admin Login Page</title>
        <link rel="stylesheet" type="text/css" href="css/LoginPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = 'HomePage.jsp'>Home</a>
            <a href = "AdminLogin.jsp">Admin Login</a>
        </div> 
        <div class = "login">
            <h1> Admin Login</h1>
            <form action = "AdminLogin" method = "post">
                <p>Email</p><input type = "text" name = "email"/>
                <p>Password</p><input type = "password" name = "password" /><br/>
                <button>Login</button></h3>
            </form>
        </div>
    </body>
</html>