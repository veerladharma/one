```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Premium Shopping</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   GLOBAL
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Inter", sans-serif;
    background: #f7f7f5;
    color: #111;
    overflow-x: hidden;
}

a {
    text-decoration: none;
    color: inherit;
}

button,
input {
    font-family: inherit;
}

button {
    cursor: pointer;
}

img {
    width: 100%;
    display: block;
}

:root {
    --black: #111111;
    --dark: #1c1c1c;
    --orange: #ff5a36;
    --orange-dark: #e94524;
    --cream: #f7f7f5;
    --white: #ffffff;
    --gray: #777;
    --light-gray: #eeeeeb;
    --green: #16a085;
    --radius: 22px;
    --shadow: 0 15px 45px rgba(0,0,0,.08);
    --transition: .35s ease;
}

.container {
    width: min(1200px, 92%);
    margin: auto;
}

/* =========================================================
   TOP BAR
========================================================= */

.top-bar {
    background: var(--black);
    color: white;
    text-align: center;
    padding: 9px;
    font-size: 12px;
    letter-spacing: .4px;
}

.top-bar span {
    color: #ff8a70;
    font-weight: 700;
}

/* =========================================================
   HEADER
========================================================= */

header {
    position: sticky;
    top: 0;
    z-index: 999;
    background: rgba(255,255,255,.88);
    backdrop-filter: blur(18px);
    border-bottom: 1px solid rgba(0,0,0,.06);
}

.navbar {
    min-height: 76px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 23px;
    font-weight: 900;
    letter-spacing: -1px;
}

.logo i {
    color: var(--orange);
    font-size: 27px;
}

.logo span {
    color: var(--orange);
}

nav ul {
    display: flex;
    gap: 6px;
    list-style: none;
}

nav a {
    padding: 10px 15px;
    border-radius: 12px;
    color: #555;
    font-size: 14px;
    font-weight: 600;
    transition: var(--transition);
}

nav a:hover,
nav a.active {
    background: #f0f0ed;
    color: #111;
}

.nav-right {
    display: flex;
    align-items: center;
    gap: 8px;
}

.search {
    width: 210px;
    height: 42px;
    background: #f0f0ed;
    border-radius: 50px;
    display: flex;
    align-items: center;
    padding: 0 15px;
}

.search input {
    width: 100%;
    border: 0;
    outline: none;
    background: transparent;
    font-size: 13px;
}

.search i {
    color: #777;
}

.icon-btn {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    border: 0;
    background: transparent;
    font-size: 17px;
    transition: var(--transition);
    position: relative;
}

.icon-btn:hover {
    background: #eeeeeb;
    transform: translateY(-2px);
}

.cart-count {
    position: absolute;
    right: -2px;
    top: -2px;
    width: 19px;
    height: 19px;
    border-radius: 50%;
    background: var(--orange);
    color: white;
    font-size: 10px;
    display: grid;
    place-items: center;
    font-weight: 800;
}

.mobile-menu {
    display: none;
}

.menu-btn {
    display: none;
}

/* =========================================================
   HERO
========================================================= */

.hero {
    min-height: 650px;
    margin: 22px auto;
    width: min(1400px, 96%);
    border-radius: 30px;
    overflow: hidden;
    position: relative;

    background:
        linear-gradient(90deg,
        rgba(10,10,10,.9) 0%,
        rgba(10,10,10,.65) 45%,
        rgba(10,10,10,.1) 100%),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90");

    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
}

.hero::after {
    content: "";
    position: absolute;
    width: 400px;
    height: 400px;
    right: 5%;
    top: 15%;
    border-radius: 50%;
    background: rgba(255,90,54,.22);
    filter: blur(80px);
}

.hero-content {
    position: relative;
    z-index: 2;
    color: white;
    width: min(600px, 90%);
}

.hero-badge {
    display: inline-flex;
    gap: 8px;
    align-items: center;
    background: rgba(255,255,255,.12);
    border: 1px solid rgba(255,255,255,.2);
    backdrop-filter: blur(10px);
    padding: 8px 15px;
    border-radius: 50px;
    font-size: 12px;
    font-weight: 700;
    margin-bottom: 22px;
}

.hero-badge i {
    color: #ff8a70;
}

.hero h1 {
    font-family: "Playfair Display", serif;
    font-size: clamp(48px, 7vw, 86px);
    line-height: .98;
    margin-bottom: 25px;
    letter-spacing: -3px;
}

.hero h1 span {
    color: #ff7659;
}

.hero p {
    color: rgba(255,255,255,.8);
    font-size: 17px;
    max-width: 520px;
    line-height: 1.7;
    margin-bottom: 30px;
}

.hero-buttons {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

.btn {
    border: 0;
    padding: 14px 25px;
    border-radius: 50px;
    font-size: 14px;
    font-weight: 800;
    display: inline-flex;
    align-items: center;
    gap: 9px;
    transition: var(--transition);
}

.btn-primary {
    background: var(--orange);
    color: white;
    box-shadow: 0 12px 30px rgba(255,90,54,.3);
}

.btn-primary:hover {
    background: var(--orange-dark);
    transform: translateY(-4px);
    box-shadow: 0 18px 35px rgba(255,90,54,.4);
}

.btn-light {
    background: rgba(255,255,255,.12);
    color: white;
    border: 1px solid rgba(255,255,255,.3);
    backdrop-filter: blur(10px);
}

.btn-light:hover {
    background: white;
    color: black;
    transform: translateY(-4px);
}

/* Floating Hero Card */

.floating-card {
    position: absolute;
    right: 7%;
    bottom: 45px;
    z-index: 3;
    width: 240px;
    background: rgba(255,255,255,.94);
    backdrop-filter: blur(20px);
    padding: 14px;
    border-radius: 20px;
    box-shadow: 0 20px 60px rgba(0,0,0,.25);
    animation: floating 4s ease-in-out infinite;
}

.floating-card img {
    height: 150px;
    object-fit: cover;
    border-radius: 14px;
}

.floating-card-content {
    padding: 12px 4px 3px;
}

.floating-card small {
    color: #888;
}

.floating-card strong {
    display: block;
    margin-top: 3px;
}

@keyframes floating {
    0%,100% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-15px);
    }
}

/* =========================================================
   TRUST BAR
========================================================= */

.trust {
    padding: 25px 0;
    background: white;
    border-top: 1px solid #eee;
    border-bottom: 1px solid #eee;
}

.trust-grid {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 20px;
}

.trust-item {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
}

.trust-item i {
    color: var(--orange);
    font-size: 23px;
}

.trust-item strong {
    font-size: 13px;
    display: block;
}

.trust-item small {
    color: #888;
}

/* =========================================================
   SECTIONS
========================================================= */

.section {
    padding: 90px 0;
}

.section-heading {
    text-align: center;
    margin-bottom: 45px;
}

.section-heading .eyebrow {
    color: var(--orange);
    font-size: 12px;
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: 2px;
}

.section-heading h2 {
    font-size: clamp(30px,4vw,46px);
    letter-spacing: -1.5px;
    margin: 10px 0;
}

.section-heading p {
    color: #777;
}

/* =========================================================
   CATEGORIES
========================================================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 16px;
}

.category {
    background: white;
    border-radius: 20px;
    padding: 25px 10px;
    text-align: center;
    box-shadow: 0 5px 25px rgba(0,0,0,.05);
    border: 1px solid #eee;
    transition: var(--transition);
}

.category:hover {
    transform: translateY(-8px);
    border-color: #ffb5a5;
    box-shadow: var(--shadow);
}

.category-icon {
    width: 65px;
    height: 65px;
    margin: auto auto 14px;
    display: grid;
    place-items: center;
    border-radius: 50%;
    background: #fff0ec;
    color: var(--orange);
    font-size: 25px;
    transition: var(--transition);
}

.category:hover .category-icon {
    background: var(--orange);
    color: white;
    transform: rotate(-8deg) scale(1.08);
}

.category h4 {
    font-size: 14px;
}

.category p {
    color: #999;
    font-size: 11px;
    margin-top: 4px;
}

/* =========================================================
   PRODUCTS
========================================================= */

.products-section {
    background: white;
}

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 22px;
}

.product {
    background: #fff;
    border-radius: 22px;
    overflow: hidden;
    border: 1px solid #eee;
    transition: var(--transition);
    position: relative;
}

.product:hover {
    transform: translateY(-8px);
    box-shadow: var(--shadow);
}

.product-image {
    height: 290px;
    background: #f1f1ef;
    position: relative;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .6s ease;
}

.product:hover .product-image img {
    transform: scale(1.08);
}

.product-badge {
    position: absolute;
    left: 14px;
    top: 14px;
    background: var(--orange);
    color: white;
    border-radius: 50px;
    padding: 6px 12px;
    font-size: 10px;
    font-weight: 800;
}

.product-badge.sale {
    background: #f4c95d;
    color: #111;
}

.wishlist {
    position: absolute;
    right: 14px;
    top: 14px;
    width: 38px;
    height: 38px;
    border-radius: 50%;
    border: 0;
    background: rgba(255,255,255,.9);
    display: grid;
    place-items: center;
    transition: var(--transition);
}

.wishlist:hover {
    color: var(--orange);
    transform: scale(1.15);
}

.product-info {
    padding: 18px;
}

.product-category {
    font-size: 10px;
    color: #999;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: 700;
}

.product h3 {
    font-size: 16px;
    margin: 7px 0;
}

.rating {
    color: #f4b942;
    font-size: 12px;
}

.rating span {
    color: #999;
}

.price-row {
    display: flex;
    align-items: center;
    gap: 9px;
    margin: 10px 0 15px;
}

.price {
    font-size: 19px;
    font-weight: 900;
}

.old-price {
    font-size: 13px;
    color: #aaa;
    text-decoration: line-through;
}

.add-cart {
    width: 100%;
    padding: 12px;
    border-radius: 12px;
    border: 0;
    background: #111;
    color: white;
    font-weight: 700;
    transition: var(--transition);
}

.add-cart:hover {
    background: var(--orange);
    transform: translateY(-2px);
}

/* =========================================================
   FLASH DEAL
========================================================= */

.deal {
    background:
        linear-gradient(110deg,#111 0%,#242424 100%);
    color: white;
    border-radius: 28px;
    overflow: hidden;
    display: grid;
    grid-template-columns: 1fr 1fr;
    min-height: 450px;
    position: relative;
}

.deal-image {
    position: relative;
}

.deal-image img {
    height: 100%;
    object-fit: cover;
}

.deal-content {
    padding: 60px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.deal-tag {
    color: #ff7659;
    font-size: 12px;
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: 2px;
}

.deal h2 {
    font-size: 42px;
    margin: 12px 0;
}

.deal p {
    color: #aaa;
    line-height: 1.7;
}

.deal-price {
    margin: 20px 0;
}

.deal-price strong {
    font-size: 36px;
}

.deal-price del {
    color: #777;
    margin-left: 10px;
}

.countdown {
    display: flex;
    gap: 10px;
    margin: 10px 0 25px;
}

.time {
    width: 65px;
    height: 65px;
    border-radius: 14px;
    background: #292929;
    display: grid;
    place-items: center;
}

.time strong {
    font-size: 20px;
}

.time small {
    color: #888;
    font-size: 9px;
}

/* =========================================================
   REVIEWS
========================================================= */

.reviews {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 20px;
}

.review {
    background: white;
    padding: 30px;
    border-radius: 22px;
    border: 1px solid #eee;
    transition: var(--transition);
}

.review:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow);
}

.review-stars {
    color: #f4b942;
    margin-bottom: 15px;
}

.review p {
    color: #555;
    line-height: 1.7;
    font-size: 14px;
    margin-bottom: 22px;
}

.customer {
    display: flex;
    align-items: center;
    gap: 12px;
}

.customer img {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    object-fit: cover;
}

.customer strong {
    display: block;
    font-size: 13px;
}

.customer small {
    color: #999;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {
    background:
        radial-gradient(circle at top right,#ff7659,transparent 35%),
        #111;
    border-radius: 28px;
    color: white;
    padding: 60px;
    text-align: center;
    position: relative;
    overflow: hidden;
}

.newsletter h2 {
    font-size: 38px;
    margin-bottom: 10px;
}

.newsletter p {
    color: #aaa;
    margin-bottom: 25px;
}

.newsletter-form {
    max-width: 500px;
    margin: auto;
    display: flex;
    background: white;
    padding: 6px;
    border-radius: 50px;
}

.newsletter-form input {
    flex: 1;
    border: 0;
    outline: 0;
    padding: 0 18px;
}

.newsletter-form button {
    border: 0;
    background: var(--orange);
    color: white;
    padding: 13px 22px;
    border-radius: 50px;
    font-weight: 700;
}

/* =========================================================
   FOOTER
========================================================= */

footer {
    background: #111;
    color: white;
    padding: 65px 0 25px;
    margin-top: 50px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer-brand p {
    color: #888;
    max-width: 300px;
    margin-top: 15px;
    line-height: 1.7;
    font-size: 13px;
}

.footer-col h4 {
    margin-bottom: 18px;
}

.footer-col a {
    display: block;
    color: #888;
    margin-bottom: 10px;
    font-size: 13px;
    transition: var(--transition);
}

.footer-col a:hover {
    color: var(--orange);
    padding-left: 4px;
}

.socials {
    display: flex;
    gap: 9px;
    margin-top: 20px;
}

.socials a {
    width: 38px;
    height: 38px;
    border-radius: 50%;
    background: #222;
    display: grid;
    place-items: center;
    color: #aaa;
}

.socials a:hover {
    background: var(--orange);
    color: white;
}

.copyright {
    border-top: 1px solid #222;
    margin-top: 45px;
    padding-top: 22px;
    text-align: center;
    color: #666;
    font-size: 12px;
}

/* =========================================================
   SCROLL REVEAL
========================================================= */

.reveal {
    opacity: 0;
    transform: translateY(30px);
    transition: .8s ease;
}

.reveal.show {
    opacity: 1;
    transform: translateY(0);
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1000px) {

    nav {
        display: none;
    }

    .menu-btn {
        display: grid;
        place-items: center;
    }

    .search {
        width: 170px;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .trust-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .floating-card {
        display: none;
    }
}

@media(max-width:700px) {

    .navbar {
        min-height: 65px;
    }

    .logo {
        font-size: 19px;
    }

    .search {
        display: none;
    }

    .hero {
        min-height: 570px;
        margin-top: 10px;
        border-radius: 22px;
        background-position: 62% center;
    }

    .hero h1 {
        font-size: 49px;
    }

    .hero p {
        font-size: 14px;
    }

    .hero-content {
        margin-left: 10px;
    }

    .section {
        padding: 65px 0;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
        gap: 10px;
    }

    .product-image {
        height: 210px;
    }

    .product-info {
        padding: 13px;
    }

    .product h3 {
        font-size: 13px;
    }

    .price {
        font-size: 16px;
    }

    .add-cart {
        font-size: 11px;
        padding: 10px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        height: 280px;
    }

    .deal-content {
        padding: 30px 25px;
    }

    .deal h2 {
        font-size: 32px;
    }

    .reviews {
        grid-template-columns: 1fr;
    }

    .newsletter {
        padding: 40px 20px;
    }

    .newsletter h2 {
        font-size: 28px;
    }

    .newsletter-form {
        flex-direction: column;
        background: transparent;
        gap: 8px;
    }

    .newsletter-form input {
        height: 48px;
        border-radius: 50px;
    }

    .newsletter-form button {
        height: 48px;
    }

    .trust-grid {
        grid-template-columns: 1fr 1fr;
    }

    .trust-item {
        justify-content: flex-start;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media(max-width:430px) {

    .hero h1 {
        font-size: 42px;
    }

    .hero-buttons {
        flex-direction: column;
        align-items: flex-start;
    }

    .categories {
        gap: 10px;
    }

    .category {
        padding: 18px 8px;
    }

    .category-icon {
        width: 52px;
        height: 52px;
    }

    .trust-item strong {
        font-size: 11px;
    }

    .trust-item small {
        font-size: 9px;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<!-- =====================================================
     TOP BAR
===================================================== -->

<div class="top-bar">
    🔥 <span>LIMITED TIME:</span>
    Get up to 40% OFF selected products + Free Shipping
</div>

<!-- =====================================================
     HEADER
===================================================== -->

<header>

<div class="container navbar">

    <button class="icon-btn menu-btn" onclick="toggleMenu()">
        <i class="fas fa-bars"></i>
    </button>

    <a href="#" class="logo">
        <i class="fas fa-bag-shopping"></i>
        Nexus<span>Shop</span>
    </a>

    <nav>
        <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#categories">Categories</a></li>
            <li><a href="#products">Trending</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#reviews">Reviews</a></li>
        </ul>
    </nav>

    <div class="nav-right">

        <div class="search">
            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                onkeyup="searchProducts()">
            <i class="fas fa-search"></i>
        </div>

        <button class="icon-btn">
            <i class="far fa-user"></i>
        </button>

        <button class="icon-btn">
            <i class="far fa-heart"></i>
        </button>

        <button class="icon-btn" onclick="showCart()">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
        </button>

    </div>

</div>

<div class="mobile-menu" id="mobileMenu">

    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Trending</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>

</header>

<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

<div class="container">

<div class="hero-content">

<div class="hero-badge">
    <i class="fas fa-sparkles"></i>
    NEW COLLECTION 2026
</div>

<h1>
    Shop Better.<br>
    Live <span>Better.</span>
</h1>

<p>
    Discover premium fashion, technology and lifestyle
    essentials — carefully selected for people who want
    quality without compromise.
</p>

<div class="hero-buttons">

<button class="btn btn-primary"
onclick="document.getElementById('products').scrollIntoView()">
    Explore Collection
    <i class="fas fa-arrow-right"></i>
</button>

<button class="btn btn-light"
onclick="document.getElementById('deals').scrollIntoView()">
    <i class="fas fa-bolt"></i>
    Today's Deals
</button>

</div>

</div>

</div>

<div class="floating-card">

<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=500&q=80">

<div class="floating-card-content">

<small>🔥 Trending Now</small>

<strong>Premium Tech Collection</strong>

</div>

</div>

</section>

<!-- =====================================================
     TRUST
===================================================== -->

<section class="trust">

<div class="container trust-grid">

<div class="trust-item">
<i class="fas fa-truck-fast"></i>
<div>
<strong>Free Shipping</strong>
<small>On orders over $50</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-shield-halved"></i>
<div>
<strong>Secure Payment</strong>
<small>100% protected checkout</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-rotate-left"></i>
<div>
<strong>Easy Returns</strong>
<small>30-day return policy</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-headset"></i>
<div>
<strong>24/7 Support</strong>
<small>We're here to help</small>
</div>
</div>

</div>

</section>

<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section reveal" id="categories">

<div class="container">

<div class="section-heading">

<div class="eyebrow">Explore</div>

<h2>Shop by Category</h2>

<p>Everything you love, all in one place.</p>

</div>

<div class="categories">

<div class="category">
<div class="category-icon"><i class="fas fa-mobile-screen"></i></div>
<h4>Smartphones</h4>
<p>24 Products</p>
</div>

<div class="category">
<div class="category-icon"><i class="fas fa-laptop"></i></div>
<h4>Laptops</h4>
<p>18 Products</p>
</div>

<div class="category">
<div class="category-icon"><i class="fas fa-shirt"></i></div>
<h4>Fashion</h4>
<p>42 Products</p>
</div>

<div class="category">
<div class="category-icon"><i class="fas fa-headphones"></i></div>
<h4>Gadgets</h4>
<p>31 Products</p>
</div>

<div class="category">
<div class="category-icon"><i class="fas fa-shoe-prints"></i></div>
<h4>Footwear</h4>
<p>27 Products</p>
</div>

<div class="category">
<div class="category-icon"><i class="fas fa-gem"></i></div>
<h4>Accessories</h4>
<p>39 Products</p>
</div>

</div>

</div>

</section>

<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section products-section reveal" id="products">

<div class="container">

<div class="section-heading">

<div class="eyebrow">Popular Picks</div>

<h2>Trending Products</h2>

<p>The products everyone's talking about.</p>

</div>

<div class="products" id="productsGrid">

<!-- PRODUCT 1 -->

<div class="product">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85">

<span class="product-badge">NEW</span>

<button class="wishlist">
<i class="far fa-heart"></i>
</button>

</div>

<div class="product-info">

<div class="product-category">Smartphones</div>

<h3>iPhone 14 Pro Max</h3>

<div class="rating">
★★★★★ <span>(128)</span>
</div>

<div class="price-row">
<span class="price">$1,099</span>
<span class="old-price">$1,199</span>
</div>

<button class="add-cart" onclick="addToCart(this)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

</div>

</div>

<!-- PRODUCT 2 -->

<div class="product">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85">

<button class="wishlist">
<i class="far fa-heart"></i>
</button>

</div>

<div class="product-info">

<div class="product-category">Laptops</div>

<h3>MacBook Pro 14"</h3>

<div class="rating">
★★★★☆ <span>(86)</span>
</div>

<div class="price-row">
<span class="price">$1,999</span>
</div>

<button class="add-cart" onclick="addToCart(this)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

</div>

</div>

<!-- PRODUCT 3 -->

<div class="product">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85">

<span class="product-badge sale">SALE</span>

<button class="wishlist">
<i class="far fa-heart"></i>
</button>

</div>

<div class="product-info">

<div class="product-category">Accessories</div>

<h3>Premium Smart Watch</h3>

<div class="rating">
★★★★★ <span>(214)</span>
</div>

<div class="price-row">
<span class="price">$349</span>
<span class="old-price">$399</span>
</div>

<button class="add-cart" onclick="addToCart(this)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

</div>

</div>

<!-- PRODUCT 4 -->

<div class="product">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85">

<button class="wishlist">
<i class="far fa-heart"></i>
</button>

</div>

<div class="product-info">

<div class="product-category">Footwear</div>

<h3>Air Max Premium</h3>

<div class="rating">
★★★★☆ <span>(53)</span>
</div>

<div class="price-row">
<span class="price">$150</span>
</div>

<button class="add-cart" onclick="addToCart(this)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

</div>

</div>

</div>

</div>

</section>

<!-- =====================================================
     FLASH DEAL
===================================================== -->

<section class="section reveal" id="deals">

<div class="container">

<div class="deal">

<div class="deal-image">

<img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=90">

</div>

<div class="deal-content">

<div class="deal-tag">
⚡ Limited Time Offer
</div>

<h2>MacBook Air M2</h2>

<p>
Thin. Powerful. Beautiful.
Get exceptional performance with Apple's M2 chip.
</p>

<div class="deal-price">
<strong>$999</strong>
<del>$1,199</del>
</div>

<div class="countdown">

<div class="time">
<div>
<strong id="hours">08</strong>
<small>HOURS</small>
</div>
</div>

<div class="time">
<div>
<strong id="minutes">42</strong>
<small>MIN</small>
</div>
</div>

<div class="time">
<div>
<strong id="seconds">18</strong>
<small>SEC</small>
</div>
</div>

</div>

<button class="btn btn-primary" onclick="addDeal()">
<i class="fas fa-cart-plus"></i>
Grab This Deal
</button>

</div>

</div>

</div>

</section>

<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="section reveal" id="reviews">

<div class="container">

<div class="section-heading">

<div class="eyebrow">Testimonials</div>

<h2>Loved by Shoppers</h2>

<p>Real experiences from our customers.</p>

</div>

<div class="reviews">

<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>
"Fast delivery, excellent packaging and the product
was exactly as described. I will definitely shop here again."
</p>

<div class="customer">

<img src="https://randomuser.me/api/portraits/women/44.jpg">

<div>
<strong>Ava Martin</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>
"The website is incredibly easy to use. I found what
I needed within minutes and checkout was super smooth."
</p>

<div class="customer">

<img src="https://randomuser.me/api/portraits/men/32.jpg">

<div>
<strong>Michael Lee</strong>
<small>Frequent Shopper</small>
</div>

</div>

</div>

<div class="review">

<div class="review-stars">
★★★★★
</div>

<p>
"Beautiful products and amazing customer service.
The quality exceeded my expectations."
</p>

<div class="customer">

<img src="https://randomuser.me/api/portraits/women/68.jpg">

<div>
<strong>Sophia Chen</strong>
<small>Verified Buyer</small>
</div>

</div>

</div>

</div>

</div>

</section>

<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="section reveal">

<div class="container">

<div class="newsletter">

<h2>Don't Miss What's Next</h2>

<p>
Get exclusive offers, early access and new product alerts.
</p>

<form class="newsletter-form" onsubmit="subscribe(event)">

<input
type="email"
id="email"
placeholder="Enter your email address"
required>

<button type="submit">
Subscribe
</button>

</form>

</div>

</div>

</section>

<!-- =====================================================
     FOOTER
===================================================== -->

<footer>

<div class="container">

<div class="footer-grid">

<div class="footer-brand">

<a href="#" class="logo">
<i class="fas fa-bag-shopping"></i>
Nexus<span>Shop</span>
</a>

<p>
Premium products. Simple shopping.
A modern shopping experience designed
for everyone.
</p>

<div class="socials">

<a href="#"><i class="fab fa-instagram"></i></a>

<a href="#"><i class="fab fa-facebook-f"></i></a>

<a href="#"><i class="fab fa-x-twitter"></i></a>

<a href="#"><i class="fab fa-youtube"></i></a>

</div>

</div>

<div class="footer-col">

<h4>Shop</h4>

<a href="#">New Arrivals</a>
<a href="#">Trending</a>
<a href="#">Best Sellers</a>
<a href="#">Deals</a>

</div>

<div class="footer-col">

<h4>Support</h4>

<a href="#">Help Center</a>
<a href="#">Shipping</a>
<a href="#">Returns</a>
<a href="#">Contact Us</a>

</div>

<div class="footer-col">

<h4>Company</h4>

<a href="#">About Us</a>
<a href="#">Careers</a>
<a href="#">Privacy</a>
<a href="#">Terms</a>

</div>

</div>

<div class="copyright">

© 2026 NexusShop. All Rights Reserved.

</div>

</div>

</footer>

<script>

/* =========================================================
   CART
========================================================= */

let cart = 0;

function addToCart(button) {

    cart++;

    document.getElementById("cartCount").textContent = cart;

    const original = button.innerHTML;

    button.innerHTML =
        '<i class="fas fa-check"></i> Added';

    button.style.background = "#16a085";

    setTimeout(() => {

        button.innerHTML = original;

        button.style.background = "";

    }, 1500);
}

function addDeal() {

    cart++;

    document.getElementById("cartCount").textContent = cart;

    alert("🔥 MacBook Air M2 added to your cart!");

}

function showCart() {

    alert(
        cart === 0
        ? "Your cart is empty."
        : `🛍️ You have ${cart} item${cart > 1 ? "s" : ""} in your cart.`
    );

}

/* =========================================================
   SEARCH
========================================================= */

function searchProducts() {

    const search =
        document
        .getElementById("searchInput")
        .value
        .toLowerCase();

    const products =
        document.querySelectorAll(".product");

    products.forEach(product => {

        const title =
            product
            .querySelector("h3")
            .textContent
            .toLowerCase();

        const category =
            product
            .querySelector(".product-category")
            .textContent
            .toLowerCase();

        if (
            title.includes(search) ||
            category.includes(search)
        ) {

            product.style.display = "";

        } else {

            product.style.display = "none";

        }

    });

}

/* =========================================================
   MOBILE MENU
========================================================= */

function toggleMenu() {

    const menu =
        document.getElementById("mobileMenu");

    if(menu.style.display === "flex") {

        menu.style.display = "none";

    } else {

        menu.style.display = "flex";

        menu.style.flexDirection = "column";

        menu.style.padding = "15px 4%";

        menu.style.gap = "10px";

    }

}

/* =========================================================
   NEWSLETTER
========================================================= */

function subscribe(event) {

    event.preventDefault();

    const email =
        document.getElementById("email").value;

    alert(
        "🎉 Thanks for subscribing!\n\n" +
        email +
        " has been added to our newsletter."
    );

    event.target.reset();

}

/* =========================================================
   COUNTDOWN
========================================================= */

let totalSeconds = 8 * 3600 + 42 * 60 + 18;

function updateTimer() {

    if(totalSeconds <= 0) {

        totalSeconds = 24 * 3600;

    }

    const hours =
        Math.floor(totalSeconds / 3600);

    const minutes =
        Math.floor((totalSeconds % 3600) / 60);

    const seconds =
        totalSeconds % 60;

    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");

    totalSeconds--;

}

setInterval(updateTimer,1000);

/* =========================================================
   SCROLL REVEAL
========================================================= */

const observer =
    new IntersectionObserver(
        entries => {

            entries.forEach(entry => {

                if(entry.isIntersecting) {

                    entry.target.classList.add("show");

                }

            });

        },
        {
            threshold: .12
        }
    );

document
    .querySelectorAll(".reveal")
    .forEach(element => {

        observer.observe(element);

    });

/* =========================================================
   WISHLIST
========================================================= */

document
    .querySelectorAll(".wishlist")
    .forEach(button => {

        button.addEventListener("click", function() {

            const icon =
                this.querySelector("i");

            icon.classList.toggle("far");

            icon.classList.toggle("fas");

            if(icon.classList.contains("fas")) {

                this.style.color = "#ff5a36";

            } else {

                this.style.color = "";

            }

        });

    });

</script>

</body>
</html>
```
