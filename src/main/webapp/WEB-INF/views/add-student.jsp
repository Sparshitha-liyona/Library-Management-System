<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<style>

/* ===== Library Background ===== */
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background-image:url("https://images.unsplash.com/photo-1524995997946-a1c2e315a42f");
    background-size:cover;
    background-position:center;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Overlay */
body::before{
    content:"";
    position:absolute;
    width:100%;
    height:100%;
    background:rgba(45,60,25,0.75);
    top:0;
    left:0;
}

/* ===== Form Card ===== */
form{
    position:relative;
    z-index:1;
    background:rgba(255,255,255,0.95);
    padding:40px;
    width:360px;
    border-radius:12px;
    box-shadow:0 10px 30px rgba(0,0,0,0.3);
}

/* Title */
form::before{
    content:"🎓 Library Management - Add Student";
    display:block;
    text-align:center;
    font-size:22px;
    font-weight:bold;
    color:#556B2F;
    margin-bottom:25px;
}

/* Inputs */
input[type="text"]{
    width:100%;
    padding:10px;
    margin-top:6px;
    border-radius:6px;
    border:1px solid #ccc;
    transition:0.3s;
}

/* Focus */
input[type="text"]:focus{
    border-color:#6B8E23;
    box-shadow:0 0 8px rgba(107,142,35,0.4);
    outline:none;
}

/* Button */
input[type="submit"]{
    width:100%;
    margin-top:15px;
    background:linear-gradient(45deg,#556B2F,#6B8E23);
    color:white;
    border:none;
    padding:12px;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:0.3s;
}

/* Hover */
input[type="submit"]:hover{
    transform:scale(1.05);
    box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

/* Decoration Icon */
form::after{
    content:"📚";
    position:absolute;
    top:-20px;
    right:-20px;
    font-size:40px;
}

</style>

</head>

<body>

<form action="addStudent" method="post">

Name 	: <input type="text" name="name"><br><br>
Email 	: <input type="text" name="email"><br><br>
<input type="submit" value="Add Student">

</form>

</body>
</html>