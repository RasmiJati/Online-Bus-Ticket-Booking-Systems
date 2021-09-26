<html>
    <head>
        <title>Delete Page</title>
        <link rel="stylesheet" type="text/css" href="css/LoginPage.css"/>
    </head>
    <body>
        <div class = "menu">
            <a href = "ChangeRecord.jsp">Go Back</a>    
        </div> 
        <div class = "login">
            <h1>Fill Below To Delete Ticket Detail</h1>
            <form action = "DeleteBookingPage.jsp" method = "post">
                <p>Id</p>  <input type="text" name = "userid" />
                <p>Name</p>    <input type = "text" name = "name"/><br/>
                <button>Delete</button></h3>
            </form>
        </div>
    </body>
</html>