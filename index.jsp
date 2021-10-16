<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="style.css">
      <title>E Corp - Login Page</title>
   </head>
   <body>
      <div id="wrapper">
          <div id="header">
         <ul>
            <li><a class="active" href="index.jsp">Home</a></li>
            <li><a href="search.jsp">Search</a></li>
            <li><a href="noticeboard.jsp">Noticeboard</a></li>
         </ul>
         </div>
         <div id="content">
            <div class="imgcontainer">
               <img class="logo" src="ecorp_logo.png" alt="Evil Corperation">
            </div>
            <div class="input-form">
            <form action="login">
                  <label><b>Username:</b></label>
                  <input type="text" placeholder="Enter Username" name="username" required>
                  <label><b>Password:</b></label>
                  <input type="password" placeholder="Enter Password" name="password" required>
                  <button type="submit">Login</button>
            </form>
            </div>
         </div>
         <div id="footer">
            <p>Copyright &copy; 2019 Terry Colby, E Corp</p>
         </div>
      </div>
   </body>
</html>