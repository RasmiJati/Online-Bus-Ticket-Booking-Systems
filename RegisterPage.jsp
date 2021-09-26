<html>
    <head>
        <title>Registeration Page</title>
        <link rel="stylesheet" type="text/css" href="css/RegisterPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = 'HomePage.jsp'>Home</a>
            <a href = 'LoginPage.jsp'>Login</a>
            <a href = 'RegisterPage.jsp'>Register</a>
        </div> 
        <div class = "register">
            <h1>Register</h1>
            <form action = "Register" method = "post">
                <p>Name</p><input type = "text" name = "name"/>
                <p>Address</p><input type = "text" name = "address"/>
                <p>Contact</p><input type = "text" name = "contact"/>
                <p>Email</p><input type = "text" name = "email"/>
                <p>Password</p><input type = "password" name = "password"/><br/>
                <button>Register</button></h3>
            </form>
            <p>Already a member?<a  href = "LoginPage.jsp">Sign In</a></p>
        </div>
    </body>
</html>