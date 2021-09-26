<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="css/LoginPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = 'HomePage.jsp'>Home</a>
            <a href = 'LoginPage.jsp'>Login</a>
            <a href = 'RegisterPage.jsp'>Register</a>
        </div> 
        <div class = "login">
            <h1>Login</h1>
            <form action = "Login" method = "post">
                <p>Email</p><input type = "text" name = "email"/>
                <p>Password</p><input type = "password" name = "password" /><br/>
                <button>Login</button></h3>
            </form>
            <p>Don't have Account?<a  href = "RegisterPage.jsp">Sign Up</a></p>
        </div>
    </body>
</html>