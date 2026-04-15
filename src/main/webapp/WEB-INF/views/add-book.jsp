<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>

<style>

/* ===== Page Background ===== */
body{
    margin:0;
    font-family: 'Segoe UI', sans-serif;
    background-image:url("https://images.unsplash.com/photo-1507842217343-583bb7270b66");
    background-size:cover;
    background-position:center;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Dark overlay like real website */
body::before{
    content:"";
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(40,55,20,0.75);
    z-index:0;
}

/* ===== Form Card ===== */
form{
    position:relative;
    z-index:1;
    background:rgba(255,255,255,0.95);
    padding:40px;
    border-radius:12px;
    width:380px;
    box-shadow:0 10px 30px rgba(0,0,0,0.3);
    text-align:left;
}

/* Heading */
form::before{
    content:"📚 Library Management - Add Book";
    display:block;
    text-align:center;
    font-size:22px;
    font-weight:bold;
    color:#556B2F;
    margin-bottom:25px;
}

/* Labels */
form{
    color:#333;
    font-size:15px;
}

/* Input fields */
input[type="text"]{
    width:100%;
    padding:10px;
    margin-top:6px;
    border-radius:6px;
    border:1px solid #ccc;
    transition:0.3s;
}

/* Focus effect */
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

/* Hover animation */
input[type="submit"]:hover{
    transform:scale(1.05);
    box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

/* Small library icon decoration */
form::after{
    content:"📖";
    position:absolute;
    top:-20px;
    right:-20px;
    font-size:40px;
}

</style>

</head>

<body>

<form action="addBook" method="post">

	Name 		 : <input type="text" name="name"><br><br>
	Author       : <input type="text" name="author"><br><br>
	No Of Copies : <input type="text" name="availableCopies"><br><br>
	<input type="submit" value="Add Book">

</form>

</body>
</html>