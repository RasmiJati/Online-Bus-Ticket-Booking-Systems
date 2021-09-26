<html>
    <head>
        <title>Delete User Detail Page</title>
        <link rel="stylesheet" type="text/css" href="css/LoginPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = "AdminUserDetailChangeRecord.jsp">Go Back</a>    
        </div> 
        <div class = "login">
            <h1>Fill Below To Delete User Detail</h1>
            <form action = "DeleteUserDetail.jsp" method = "post">
                <p>User Id</p>  <input type="text" name = "id" />
                <p>Name</p>    <input type = "text" name = "name"/><br/>
                <button>Delete</button></h3>
            </form>
        </div>
    </body>
</html>