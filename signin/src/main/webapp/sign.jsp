<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to FDFS! </title>
<link rel="icon" href="mainhtml/uplogo.png">
<style>
      * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
     font-family: 'Roboto', sans-serif;
    font-weight: 100px;
    font-size: 14px;
}
.bg {
    background-image: url('photoshop.jpg'); 
    height: 100vh;
    width: 100vw;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    position: fixed; 
    z-index: -1; 
}
.login {
    position: relative; 
    z-index: 1; 
    margin: 0 auto;
    top: 100px;
    width: 400px;
    padding: 30px;
    background-color: rgb(252, 237, 237);
    border-radius: 8px;
    text-align: left;
}
.login label {
    display: block;
    margin: 10px 0 5px;
    font-family:sans-serif;
    font-size: 14px;
}
.login input[type="text"], 
.login input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
}
.login input[type="submit"] {
    background-color: #ca8112;
    color: white;
    border: none;
    cursor: pointer;
}
.login input[type="submit"]:hover {
    background-color: #c40a00;
}
</style>
</head>
<body>
     <form action="LoginServlet" method="post">
     <div class="bg"></div>
        <div class="login">
            <div class="ima" style="text-align: center;"><img src="logofdfs.png" alt="" width="180px" height="50px"></div><br>
            <label>Enter username</label>
            <input type="text" placeholder="Username" name="username" id="user">
            <label>Enter password</label>
            <input type="text" placeholder="Password" name="password" id="pass">
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
                <p style="color: red;"> <%= errorMessage %> </p>
            <% } %>
            <input type="submit" value="Sign in">
            <label style="text-align: center;">New user? <a href="singup.jsp">Sign up</a></label>
        </div>
      </form>
</body>
</html>