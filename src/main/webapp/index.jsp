<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TechNova | DevOps Deployment Platform</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
scroll-behavior:smooth;
}

body{

background:#070B14;
overflow-x:hidden;
color:white;

background-image:

radial-gradient(circle at top left,
rgba(80,120,255,.18),
transparent 35%),

radial-gradient(circle at bottom right,
rgba(0,180,255,.08),
transparent 30%);

}


/* ==========================
      NAVBAR
========================== */

nav{

position:fixed;

top:20px;

left:50%;

transform:translateX(-50%);

width:92%;

padding:18px 55px;

display:flex;

justify-content:space-between;

align-items:center;

background:rgba(255,255,255,.05);

backdrop-filter:blur(15px);

border:1px solid rgba(255,255,255,.08);

border-radius:60px;

z-index:999;

transition:.4s;

}

.logo{

font-size:30px;

font-weight:800;

color:#64A7FF;

letter-spacing:1px;

}

nav ul{

display:flex;

list-style:none;

gap:40px;

}

nav ul li a{

text-decoration:none;

color:white;

font-weight:500;

transition:.3s;

}

nav ul li a:hover{

color:#64A7FF;

}


/* ==========================
      HERO
========================== */

.hero{

min-height:100vh;

display:flex;

justify-content:center;

align-items:center;

padding:140px 10%;

position:relative;

text-align:center;

}

.hero-content{

max-width:900px;

animation:fadeUp 1.2s ease;

}

.hero h1{

font-size:78px;

line-height:90px;

font-weight:800;

margin-bottom:25px;

}

.hero h1 span{

color:#5FA6FF;

}

.hero p{

font-size:20px;

line-height:36px;

color:#B7C0D6;

margin-bottom:45px;

}


/* Buttons */

.hero-buttons{

display:flex;

justify-content:center;

gap:20px;

flex-wrap:wrap;

}

.btn{

padding:17px 34px;

border-radius:50px;

text-decoration:none;

font-weight:600;

transition:.35s;

}

.primary{

background:#4F8CFF;

color:white;

box-shadow:0 10px 40px rgba(79,140,255,.35);

}

.primary:hover{

transform:translateY(-6px);

box-shadow:0 25px 60px rgba(79,140,255,.45);

}

.secondary{

border:1px solid rgba(255,255,255,.15);

background:rgba(255,255,255,.04);

color:white;

}

.secondary:hover{

background:rgba(255,255,255,.08);

transform:translateY(-6px);

}


/* Floating Blur */

.blur1{

position:absolute;

width:350px;

height:350px;

background:#2F6DFF;

filter:blur(170px);

opacity:.18;

top:100px;

left:-80px;

}

.blur2{

position:absolute;

width:300px;

height:300px;

background:#00D4FF;

filter:blur(170px);

opacity:.10;

bottom:50px;

right:-100px;

}


/* Scroll */

.scroll{

position:absolute;

bottom:40px;

left:50%;

transform:translateX(-50%);

font-size:15px;

color:#7F8CA5;

animation:float 2s infinite;

}


/* Animations */

@keyframes fadeUp{

from{

opacity:0;

transform:translateY(60px);

}

to{

opacity:1;

transform:translateY(0);

}

}

@keyframes float{

0%{

transform:translate(-50%,0);

}

50%{

transform:translate(-50%,10px);

}

100%{

transform:translate(-50%,0);

}

}

.section{

padding:120px 9%;

}

.section-title{

text-align:center;

font-size:48px;

margin-bottom:70px;

font-weight:700;

}
.features{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(280px,1fr));

gap:30px;

margin-top:40px;

}

.card{

background:rgba(255,255,255,.05);

border:1px solid rgba(255,255,255,.08);

border-radius:24px;

padding:40px 30px;

backdrop-filter:blur(20px);

transition:.4s;

cursor:pointer;

}

.card:hover{

transform:translateY(-10px);

box-shadow:0 20px 60px rgba(79,140,255,.20);

border-color:rgba(79,140,255,.35);

}

.card-icon{

font-size:48px;

margin-bottom:25px;

}

.card h3{

font-size:24px;

margin-bottom:15px;

color:#66A8FF;

}

.card p{

line-height:30px;

color:#B6C1D7;

}


/* ===============================
      PIPELINE
===============================*/

.pipeline{

display:flex;

justify-content:center;

align-items:center;

flex-wrap:wrap;

gap:18px;

margin-top:60px;

}

.step{

padding:22px 34px;

border-radius:20px;

background:rgba(255,255,255,.05);

border:1px solid rgba(255,255,255,.08);

font-weight:600;

transition:.35s;

}

.step:hover{

background:#4F8CFF;

transform:translateY(-6px);

}

.arrow{

font-size:28px;

color:#66A8FF;

}


/* ===============================
      STATS
===============================*/

.stats{

display:grid;

grid-template-columns:repeat(auto-fit,minmax(220px,1fr));

gap:30px;

margin-top:60px;

}

.stat{

background:rgba(255,255,255,.05);

padding:40px;

border-radius:22px;

text-align:center;

border:1px solid rgba(255,255,255,.08);

transition:.35s;

}

.stat:hover{

transform:translateY(-8px);

box-shadow:0 20px 50px rgba(79,140,255,.20);

}

.stat h1{

font-size:54px;

margin-bottom:10px;

color:#66A8FF;

}

.stat p{

color:#AAB8D1;

font-size:18px;

}


/* ===============================
      HTML STARTS
===============================*/

</style>

</head>

<body>

<div class="blur1"></div>

<div class="blur2"></div>

<nav>

<div class="logo">

TechNova

</div>

<ul>

<li><a href="#">Home</a></li>

<li><a href="#features">Features</a></li>

<li><a href="#pipeline">Pipeline</a></li>

<li><a href="#stats">Stats</a></li>

<li><a href="#">Contact</a></li>

</ul>

</nav>

<section class="hero">

<div class="hero-content">

<h1>

Deploy

<span>Smarter.</span>

<br>

Build

<span>Faster.</span>

</h1>

<p>

A complete DevOps deployment pipeline powered by

GitHub,

Jenkins,

Maven,

AWS,

Tomcat,

Nginx,

Launch Templates,

Auto Scaling Groups

and

Application Load Balancer.

</p>

<div class="hero-buttons">

<a href="#" class="btn primary">

🚀 Deploy Successfully

</a>

<a href="#pipeline" class="btn secondary">

View Pipeline

</a>

</div>

</div>

<div class="scroll">

Scroll ↓

</div>

</section>

<section class="section" id="features">

<h2 class="section-title">

Powerful Features

</h2>

<div class="features">

<div class="card">

<div class="card-icon">⚡</div>

<h3>CI / CD</h3>

<p>

Automatic deployment using GitHub,

Jenkins,

Maven,

and AWS.

</p>

</div>

<div class="card">

<div class="card-icon">☁️</div>

<h3>AWS Infrastructure</h3>

<p>

EC2,

Application Load Balancer,

Launch Templates,

Golden AMIs,

Auto Scaling.

</p>

</div>

<div class="card">

<div class="card-icon">🔒</div>

<h3>Secure Deployment</h3>

<p>

IAM Roles,

Security Groups,

Private Networking,

Production Ready.

</p>

</div>

<div class="card">

<div class="card-icon">🚀</div>

<h3>Zero Downtime</h3>

<p>

Rolling deployment using Golden AMIs

with Auto Scaling Groups.

</p>

</div>

</div>

</section>

<section class="section" id="pipeline">

<h2 class="section-title">

Deployment Pipeline

</h2>

<div class="pipeline">

<div class="step">GitHub</div>

<div class="arrow">➜</div>

<div class="step">Jenkins</div>

<div class="arrow">➜</div>

<div class="step">Maven</div>

<div class="arrow">➜</div>

<div class="step">S3</div>

<div class="arrow">➜</div>

<div class="step">Tomcat</div>

<div class="arrow">➜</div>

<div class="step">Golden AMI</div>

<div class="arrow">➜</div>

<div class="step">ASG + ALB</div>

</div>

</section>

<section class="section" id="stats">

<h2 class="section-title">

Project Statistics

</h2>

<div class="stats">

<div class="stat">

<h1>10+</h1>

<p>AWS Services</p>

</div>

<div class="stat">

<h1>100%</h1>

<p>Deployment Success</p>

</div>

<div class="stat">

<h1>0</h1>

<p>Downtime Goal</p>

</div>

<div class="stat">

<h1>24/7</h1>

<p>Production Ready</p>

</div>

</div>

</section>


<footer>

<div class="footer-container">

<h2>TechNova</h2>

<p>

Designed for modern DevOps deployment using

GitHub • Jenkins • Maven • AWS • Tomcat • Nginx

</p>

<div class="footer-links">

<a href="#">Home</a>

<a href="#">Features</a>

<a href="#">Pipeline</a>

<a href="#">Contact</a>

</div>

<p class="copyright">

© 2026 TechNova. Built with ❤️ by Abhishek Rao.

</p>

</div>

</footer>

<style>

footer{

margin-top:120px;

padding:80px 10%;

background:rgba(255,255,255,.03);

border-top:1px solid rgba(255,255,255,.08);

text-align:center;

}

.footer-container h2{

font-size:34px;

color:#66A8FF;

margin-bottom:20px;

}

.footer-container p{

color:#AAB8D1;

line-height:30px;

margin-bottom:25px;

}

.footer-links{

display:flex;

justify-content:center;

gap:35px;

margin-bottom:35px;

flex-wrap:wrap;

}

.footer-links a{

text-decoration:none;

color:white;

transition:.35s;

}

.footer-links a:hover{

color:#66A8FF;

}

.copyright{

font-size:15px;

color:#7F8CA5;

}

/* ==========================
      Scroll Animation
========================== */

.hidden{

opacity:0;

transform:translateY(60px);

transition:1s;

}

.show{

opacity:1;

transform:translateY(0);

}

/* ==========================
      Responsive
========================== */

@media(max-width:900px){

.hero h1{

font-size:55px;

line-height:65px;

}

nav{

padding:18px 25px;

}

nav ul{

display:none;

}

.section-title{

font-size:36px;

}

.pipeline{

flex-direction:column;

}

.arrow{

transform:rotate(90deg);

}

}

@media(max-width:600px){

.hero h1{

font-size:42px;

line-height:50px;

}

.hero p{

font-size:17px;

line-height:30px;

}

.logo{

font-size:24px;

}

.btn{

width:100%;

text-align:center;

}

}

</style>

<script>

/* Fade Animation */

const observer = new IntersectionObserver(entries=>{

entries.forEach(entry=>{

if(entry.isIntersecting){

entry.target.classList.add("show");

}

});

});

document.querySelectorAll(".section,.card,.stat").forEach(el=>{

el.classList.add("hidden");

observer.observe(el);

});

/* Navbar Background */

window.addEventListener("scroll",()=>{

const nav=document.querySelector("nav");

if(window.scrollY>80){

nav.style.background="rgba(10,15,25,.90)";

nav.style.boxShadow="0 10px 40px rgba(0,0,0,.35)";

}else{

nav.style.background="rgba(255,255,255,.05)";

nav.style.boxShadow="none";

}

});

/* Smooth Button Effect */

document.querySelectorAll(".btn").forEach(btn=>{

btn.addEventListener("mouseenter",()=>{

btn.style.transform="translateY(-6px)";

});

btn.addEventListener("mouseleave",()=>{

btn.style.transform="translateY(0px)";

});

});

</script>

</body>

</html>