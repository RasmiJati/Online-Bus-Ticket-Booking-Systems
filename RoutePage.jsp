<html>
    <head>
        <title>Admin or Route Form</title>
        <link rel="stylesheet" type="text/css" href="css/RoutePage.css"/>
    </head>
    <body>            
        <div class = "route">
            <h1>Admin/Route Form</h1>

            <form action = "route" method = "post">
             
                <div class="input-group">
                   <label> Route </label>
                    <select name="route">
                        <option>Choose Route</option>
                        <option value="Kathmandu To Pokhara">Kathmandu To Pokhara</option>
                        <option value="Pokhara To Kathmandu">Pokhara To Kathmandu</option>
                        <option value="Kathmandu To Lumbini">Kathmandu To Lumbini</option>
                        <option value="Lumbini To Kathmandu">Lumbini To Kathmandu</option>
                        <option value="Kathmandu To Gorkha">Kathmandu To Gorkha</option>
                        <option value="Gorkha To Kathmandu">Gorkha To Kathmandu</option>
                        <option value="Kathmandu To Mustang">Kathmandu To Mustang</option>
                        <option value="Mustang To Kathmandu">Mustang To Kathmandu</option>
                        <option value="Kathmandu To Janakpur">Kathmandu To Janakpur</option>
                        <option value="Janakpur To Kathmandu">Janakpur To Kathmandu</option>
                        <option value="Kathmandu To Chitlang">Kathmandu To Chitlang</option>
                        <option value="Chitlang To Kathmandu">Chitlang To Kathmandu</option>
                        <option value="Kathmandu To Biratnagar">Kathmandu To Biratnagar</option>
                        <option value="Biratnagar To Kathmandu">Biratnagar To Kathmandu</option>
                        <option value="Kathmandu To Jhapa">Kathmandu To Jhapa</option>
                        <option value="Jhapa To Kathmandu">Jhapa To Kathmandu</option>
                        <option value="Kathmandu To Dholka">Kathmandu To Dholka</option>
                        <option value="Dholka To Kathmandu">Dholka To Kathmandu</option>
                         
                    </select>
                </div><br/>

                <div class="input-group">
                   <label> Price </label> <input type="text" name="price"/>
                </div><br/>

                <div class="input-group">
                    <button type="submit" name="submit" class = "btn">Submit</button>
                </div>
            </form>
            <a  href = "AdminChangeRecord.jsp">Go Back</a>
        </div>
    </body>
</html>