/* ==========================================
   TechNova Premium DevOps
   app.js
========================================== */

/* ==========================
      NAVBAR SCROLL
========================== */

const navbar = document.querySelector("nav");

window.addEventListener("scroll", () => {

    if(window.scrollY > 80){

        navbar.style.background = "rgba(8,12,20,.95)";
        navbar.style.backdropFilter = "blur(20px)";
        navbar.style.boxShadow = "0 15px 40px rgba(0,0,0,.35)";

    }

    else{

        navbar.style.background = "rgba(255,255,255,.05)";
        navbar.style.boxShadow = "none";

    }

});


/* ==========================
      SCROLL ANIMATION
========================== */

const observer = new IntersectionObserver((entries)=>{

    entries.forEach(entry=>{

        if(entry.isIntersecting){

            entry.target.classList.add("show");

        }

    });

},{
    threshold:0.15
});

document.querySelectorAll(

".section,.feature-card,.stat-card,.price-card,.testimonial-card,.faq-item,.info-box"

).forEach(el=>{

    el.classList.add("hidden");

    observer.observe(el);

});


/* ==========================
      HERO COUNTER
========================== */

const counters = document.querySelectorAll(".hero-stats h2,.stat-card h1");

counters.forEach(counter=>{

    const original = counter.innerText;

    const value = parseInt(original.replace(/\D/g,""));

    if(isNaN(value)) return;

    let current = 0;

    const increment = Math.ceil(value/80);

    const update = ()=>{

        current += increment;

        if(current >= value){

            counter.innerText = original;

            return;

        }

        if(original.includes("%")){

            counter.innerText = current + "%";

        }

        else if(original.includes("+")){

            counter.innerText = current + "+";

        }

        else{

            counter.innerText = current;

        }

        requestAnimationFrame(update);

    };

    update();

});


/* ==========================
      BUTTON HOVER
========================== */

document.querySelectorAll(

".primary-btn,.secondary-btn,.price-btn,.nav-btn"

).forEach(button=>{

    button.addEventListener("mouseenter",()=>{

        button.style.transform="translateY(-6px)";

    });

    button.addEventListener("mouseleave",()=>{

        button.style.transform="translateY(0px)";

    });

});


/* ==========================
      ACTIVE NAV LINK
========================== */

const sections = document.querySelectorAll("section");

const navLinks = document.querySelectorAll("nav ul li a");

window.addEventListener("scroll",()=>{

    let current = "";

    sections.forEach(section=>{

        const top = section.offsetTop - 200;

        if(pageYOffset >= top){

            current = section.getAttribute("id");

        }

    });

    navLinks.forEach(link=>{

        link.classList.remove("active");

        if(link.getAttribute("href") === "#" + current){

            link.classList.add("active");

        }

    });

});


/* ==========================
      SMOOTH SCROLL
========================== */

document.querySelectorAll('a[href^="#"]').forEach(anchor=>{

    anchor.addEventListener("click",function(e){

        e.preventDefault();

        const target = document.querySelector(

            this.getAttribute("href")

        );

        if(target){

            target.scrollIntoView({

                behavior:"smooth"

            });

        }

    });

});


/* ==========================
      FLOATING DASHBOARD
========================== */

const dashboard = document.querySelector(".dashboard");

if(dashboard){

    window.addEventListener("mousemove",(e)=>{

        const x = (window.innerWidth/2 - e.clientX)/45;

        const y = (window.innerHeight/2 - e.clientY)/45;

        dashboard.style.transform =

        `rotateY(${x}deg) rotateX(${-y}deg)`;

    });

}


/* ==========================
      LOADED
========================== */

window.onload=()=>{

    document.body.style.opacity="1";

};