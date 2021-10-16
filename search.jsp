<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="style.css">
      <title>E Corp - Employee Search</title>
   </head>
   <body>
      <div id="wrapper">
        <div id="header"> 
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a class="active" href="search.jsp">Search</a></li>
            <li><a href="noticeboard.jsp">Noticeboard</a></li>
         </ul>
         </div>
         <div id="content">
            <%
            if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
            %>
            <h1>Welcome To E Corp...</h1>
            <h3><a href="index.jsp">Please login to view this page</a></h3>
            <%} else {
                %>
             <h1>Welcome: <%=session.getAttribute("username")%></h1>

            <div class="imgcontainer">
               <img class="logo" src="ecorp_logo.png" alt="Evil Corperation">
            </div>

            <h1>E Corp Employee Database:</h1>
            <div class="input-form">
               <form>
                     <label><b>Employee Name:</b></label>
                     <input type="text" placeholder="Enter Employee Name" name="username" required>
                     <button type="submit" value="Submit">Submit</button>
               </form>
            </div>
            <div class="search_results">
               <h3>Search Results:</h3>
               <table id="search" align="center">
                  <thead>
                     <tr>
                        <th>Username</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Position</th>
                     </tr>
                  </thead>
                  <tbody>
                     <%@page import="java.sql.*" %>
                     <%
                        String username = request.getParameter("username");
                        try 
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecorp?autoReconnect=true&useSSL=false", "ecorp_admin", "passw0rd");
                        
                            String sql = "SELECT username, first_name, last_name, position FROM employees WHERE username= ?";
                            System.out.println(sql);
                            PreparedStatement st = conn.prepareStatement(sql);
                            st.setString(1,username);
			    
			                   ResultSet rs = st.executeQuery();
                        
                            while (rs.next()) {
                               String uname = rs.getString("username");
                               String first_name = rs.getString("first_name");
                               String last_name = rs.getString("last_name");
                               String position = rs.getString("position");
                               out.println("<tr>");
                               out.println("<td>" + uname + "</td>");
                               out.println("<td>" + first_name + "</td>");
                               out.println("<td>" + last_name + "</td>");
                               out.println("<td>" + position + "</td>");
                               out.println("</tr>");
                            }
                        } 
                        catch (Exception e) 
                        {
                            System.out.println(">>> ERROR running search.jsp query...");
                            e.printStackTrace();
                        }
                        %>
                  </tbody>
               </table>
            </div>
            <%
            }
            %>
         </div>
         <div id="footer">
            <p>Copyright &copy; 2019 Terry Colby, E Corp</p>
         </div>
      </div>
   </body>
</html>
