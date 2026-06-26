<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Practice Website</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,Helvetica,sans-serif;
}

body{
    background:#0f172a;
    color:white;
}

header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:25px 80px;
}

.logo{
    font-size:28px;
    font-weight:bold;
}

nav a{
    color:white;
    text-decoration:none;
    margin-left:30px;
    font-size:17px;
}

.hero{
    height:85vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    flex-direction:column;
}

.hero h1{
    font-size:60px;
    margin-bottom:20px;
}

.hero p{
    font-size:22px;
    color:#d1d5db;
    width:700px;
    line-height:1.6;
}

.btn{
    margin-top:40px;
    padding:15px 40px;
    background:#2563eb;
    color:white;
    border-radius:8px;
    text-decoration:none;
    font-size:18px;
}

.features{
    display:flex;
    justify-content:center;
    gap:40px;
    padding:80px;
}

.card{
    width:300px;
    background:#1e293b;
    padding:30px;
    border-radius:12px;
}

.card h2{
    margin-bottom:15px;
}

footer{
    text-align:center;
    padding:30px;
    background:#020617;
}

</style>

</head>

<body>

<header>

<div class="logo">
Practice Website
</div>

<nav>
<a href="#">Home</a>
<a href="#">Services</a>
<a href="#">Projects</a>
<a href="#">Contact</a>
</nav>

</header>

<section class="hero">

<h1>Welcome to Practice Website</h1>

<p>
This application is used for practicing complete CI/CD deployment using Git, GitHub, Jenkins, Maven, Tomcat and AWS EC2.
</p>

<a class="btn" href="#">Deploy Successfully 🚀</a>

</section>

<section class="features">

<div class="card">
<h2>Git</h2>
<p>Source code version control using Git.</p>
</div>

<div class="card">
<h2>Jenkins</h2>
<p>Automatic build and deployment pipeline.</p>
</div>

<div class="card">
<h2>AWS</h2>
<p>Deployment on Tomcat running inside EC2.</p>
</div>

</section>

<footer>

Created by Abhishek Rao • Practice Deployment

</footer>

</body>
</html>