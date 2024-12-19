<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" href="signupstyle.css">
    <link rel="icon" href="mainhtml/booklogo.png">
    <style>
        
        * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
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
    /* filter: blur(1px) brightness(0.7); */
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
       <form action="SignupServlet" method="post">
      <div class="bg"></div>
        <div class="login">
            <div class="ima" style="text-align: center;"><img src="pngegg.png" alt="" width="180px" height="50px"></div><br>
            <label>Enter a new username</label>
            <input type="text" placeholder="Username" name="username">
            <label>Enter a new password</label>
            <input type="text" placeholder="Password" name="password">
           <a href="signinpage.html"> <input type="submit" value="Sign up"> </a>
        </div>
        </form>
</body>
</html>