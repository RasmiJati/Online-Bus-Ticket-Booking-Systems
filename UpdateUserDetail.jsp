<html>
    <head>
        <title>Update User Detail Page</title>
        <link rel="stylesheet" type="text/css" href="css/LoginPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = "AdminUserDetailChangeRecord.jsp">Go Back</a>    
        </div> 
        <div class = "login">
            <h1>Fill Below To Update User Detail</h1>
            <form action = "AdminUserDetailUpdate.jsp" method = "post">
                <p>User Id</p><input type="text" name="id"/><br/>
                <p>Name</p>  <input type="text" name = "name" /><br/>
                <button>Update</button></h3>
            </form>
        </div>
    </body>
</html>