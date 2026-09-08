```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Future Shopping Experience123</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root{
    --primary:#ff3d81;
    --secondary:#7c3aed;
    --blue:#2563eb;
    --cyan:#06b6d4;
    --green:#10b981;
    --yellow:#f59e0b;
    --red:#ef4444;

    --bg:#f7f8fc;
    --card:#ffffff;
    --text:#151522;
    --muted:#73758a;
    --border:#e8e9f0;

    --gradient:linear-gradient(135deg,#ff3d81,#7c3aed,#2563eb);
    --gradient2:linear-gradient(135deg,#06b6d4,#2563eb,#7c3aed);
    --gradient3:linear-gradient(135deg,#ff7a18,#ff3d81,#7c3aed);

    --shadow:0 20px 60px rgba(35,20,80,.12);
    --radius:24px;
    --transition:.3s ease;
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:"Inter",sans-serif;
    background:var(--bg);
    color:var(--text);
    overflow-x:hidden;
    transition:.3s;
}

body.dark{
    --bg:#0d0d16;
    --card:#171722;
    --text:#fff;
    --muted:#aaaabd;
    --border:#29293a;
}

a{
    text-decoration:none;
    color:inherit;
}

button,
input,
select{
    font-family:inherit;
}

button{
    cursor:pointer;
}

img{
    width:100%;
    display:block;
}

.container{
    width:min(1250px,92%);
    margin:auto;
}

/* =========================================================
   TOP BAR
========================================================= */

.top-bar{
    background:var(--gradient);
    color:#fff;
    text-align:center;
    padding:10px;
    font-size:12px;
    font-weight:700;
}

.top-bar i{
    margin-right:7px;
}

/* =========================================================
   HEADER
========================================================= */

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(255,255,255,.88);
    backdrop-filter:blur(20px);
    border-bottom:1px solid var(--border);
}

body.dark header{
    background:rgba(13,13,22,.9);
}

.navbar{
    min-height:76px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;
}

.logo{
    display:flex;
    align-items:center;
    gap:9px;
    font-size:24px;
    font-weight:900;
}

.logo i{
    color:var(--primary);
}

.logo span{
    background:var(--gradient);
    -webkit-background-clip:text;
    color:transparent;
}

nav ul{
    display:flex;
    list-style:none;
    gap:5px;
}

nav a{
    padding:10px 14px;
    border-radius:12px;
    font-size:13px;
    font-weight:700;
    color:var(--muted);
    transition:var(--transition);
}

nav a:hover,
nav a.active{
    background:rgba(124,58,237,.1);
    color:var(--secondary);
}

.nav-right{
    display:flex;
    align-items:center;
    gap:7px;
}

.search{
    width:230px;
    height:43px;
    display:flex;
    align-items:center;
    background:var(--card);
    border:1px solid var(--border);
    border-radius:50px;
    padding:0 15px;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    color:var(--text);
}

.search i{
    color:var(--muted);
}

.icon-btn{
    width:43px;
    height:43px;
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    border-radius:50%;
    position:relative;
    transition:var(--transition);
}

.icon-btn:hover{
    transform:translateY(-3px);
    color:var(--primary);
    box-shadow:0 8px 20px rgba(124,58,237,.15);
}

.cart-count{
    position:absolute;
    top:-4px;
    right:-3px;
    width:20px;
    height:20px;
    border-radius:50%;
    background:var(--primary);
    color:white;
    font-size:10px;
    display:grid;
    place-items:center;
    font-weight:900;
}

.menu-btn{
    display:none;
}

/* =========================================================
   MOBILE MENU
========================================================= */

.mobile-menu{
    display:none;
    padding:15px 4%;
    border-top:1px solid var(--border);
}

.mobile-menu a{
    padding:12px;
    font-weight:700;
    border-radius:10px;
}

.mobile-menu a:hover{
    background:rgba(124,58,237,.1);
}

/* =========================================================
   HERO
========================================================= */

.hero{
    width:min(1450px,96%);
    min-height:650px;
    margin:20px auto;
    border-radius:32px;
    overflow:hidden;
    position:relative;
    display:flex;
    align-items:center;

    background:
    linear-gradient(90deg,
    rgba(12,8,25,.94),
    rgba(50,15,70,.75),
    rgba(20,30,80,.25)),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90");

    background-size:cover;
    background-position:center;
}

.hero::before{
    content:"";
    position:absolute;
    width:500px;
    height:500px;
    right:5%;
    top:10%;
    border-radius:50%;
    background:linear-gradient(
        135deg,
        rgba(255,61,129,.35),
        rgba(124,58,237,.3),
        rgba(6,182,212,.25)
    );
    filter:blur(80px);
}

.hero-content{
    position:relative;
    z-index:2;
    color:white;
    max-width:650px;
}

.hero-badge{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:9px 16px;
    border-radius:50px;
    background:rgba(255,255,255,.12);
    border:1px solid rgba(255,255,255,.2);
    backdrop-filter:blur(12px);
    font-size:12px;
    font-weight:800;
    margin-bottom:22px;
}

.hero-badge i{
    color:#ffcc00;
}

.hero h1{
    font-family:"Playfair Display",serif;
    font-size:clamp(50px,7vw,88px);
    line-height:.98;
    letter-spacing:-3px;
    margin-bottom:25px;
}

.hero h1 span{
    background:linear-gradient(90deg,#ff6aa2,#c084fc,#67e8f9);
    -webkit-background-clip:text;
    color:transparent;
}

.hero p{
    max-width:550px;
    color:rgba(255,255,255,.8);
    line-height:1.7;
    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

/* =========================================================
   BUTTONS
========================================================= */

.btn{
    border:0;
    padding:14px 23px;
    border-radius:50px;
    font-weight:800;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    transition:var(--transition);
}

.btn-primary{
    color:white;
    background:var(--gradient);
    box-shadow:0 15px 35px rgba(124,58,237,.3);
}

.btn-primary:hover{
    transform:translateY(-4px) scale(1.02);
    box-shadow:0 20px 45px rgba(255,61,129,.35);
}

.btn-light{
    background:rgba(255,255,255,.12);
    color:white;
    border:1px solid rgba(255,255,255,.3);
    backdrop-filter:blur(10px);
}

.btn-light:hover{
    background:white;
    color:#222;
}

/* =========================================================
   TRUST
========================================================= */

.trust{
    background:var(--card);
    border-top:1px solid var(--border);
    border-bottom:1px solid var(--border);
    padding:25px 0;
}

.trust-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.trust-item{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:12px;
}

.trust-item i{
    font-size:23px;
    background:var(--gradient);
    -webkit-background-clip:text;
    color:transparent;
}

.trust-item strong{
    display:block;
    font-size:13px;
}

.trust-item small{
    color:var(--muted);
}

/* =========================================================
   SECTION
========================================================= */

.section{
    padding:85px 0;
}

.section-heading{
    text-align:center;
    margin-bottom:40px;
}

.eyebrow{
    color:var(--primary);
    text-transform:uppercase;
    letter-spacing:2px;
    font-size:12px;
    font-weight:900;
}

.section-heading h2{
    font-size:clamp(30px,4vw,48px);
    margin:10px 0;
}

.section-heading p{
    color:var(--muted);
}

/* =========================================================
   CATEGORIES
========================================================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:16px;
}

.category{
    background:var(--card);
    border:1px solid var(--border);
    border-radius:22px;
    padding:25px 10px;
    text-align:center;
    transition:var(--transition);
}

.category:hover{
    transform:translateY(-8px);
    box-shadow:var(--shadow);
}

.category-icon{
    width:65px;
    height:65px;
    margin:auto auto 14px;
    border-radius:20px;
    display:grid;
    place-items:center;
    font-size:25px;
    color:white;
    background:var(--gradient);
}

.category:nth-child(2) .category-icon{
    background:var(--gradient2);
}

.category:nth-child(3) .category-icon{
    background:var(--gradient3);
}

.category:nth-child(4) .category-icon{
    background:linear-gradient(135deg,#06b6d4,#10b981);
}

.category:nth-child(5) .category-icon{
    background:linear-gradient(135deg,#f59e0b,#ef4444);
}

.category:nth-child(6) .category-icon{
    background:linear-gradient(135deg,#ec4899,#8b5cf6);
}

.category h4{
    font-size:14px;
}

.category p{
    color:var(--muted);
    font-size:11px;
    margin-top:5px;
}

/* =========================================================
   SHOP TOOLBAR
========================================================= */

.products-section{
    background:var(--card);
}

.shop-toolbar{
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:15px;
    margin-bottom:25px;
    flex-wrap:wrap;
}

.filters{
    display:flex;
    gap:8px;
    flex-wrap:wrap;
}

.filter-btn{
    border:1px solid var(--border);
    background:var(--card);
    color:var(--muted);
    padding:9px 15px;
    border-radius:50px;
    font-size:12px;
    font-weight:800;
}

.filter-btn.active,
.filter-btn:hover{
    color:white;
    border-color:transparent;
    background:var(--gradient);
}

.sort-select{
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    padding:10px 15px;
    border-radius:50px;
    outline:0;
}

/* =========================================================
   PRODUCTS
========================================================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:22px;
}

.product{
    background:var(--card);
    border:1px solid var(--border);
    border-radius:23px;
    overflow:hidden;
    position:relative;
    transition:var(--transition);
}

.product:hover{
    transform:translateY(-8px);
    box-shadow:var(--shadow);
}

.product-image{
    height:290px;
    background:#eee;
    position:relative;
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.6s ease;
}

.product:hover .product-image img{
    transform:scale(1.08);
}

.product-badge{
    position:absolute;
    left:13px;
    top:13px;
    background:var(--gradient);
    color:white;
    padding:6px 11px;
    border-radius:50px;
    font-size:10px;
    font-weight:900;
}

.product-badge.sale{
    background:linear-gradient(135deg,#f59e0b,#ef4444);
}

.product-actions{
    position:absolute;
    right:13px;
    top:13px;
    display:flex;
    flex-direction:column;
    gap:7px;
}

.product-action{
    width:38px;
    height:38px;
    border:0;
    border-radius:50%;
    background:rgba(255,255,255,.92);
    color:#222;
    display:grid;
    place-items:center;
}

.product-action:hover{
    color:var(--primary);
}

.product-info{
    padding:18px;
}

.product-category{
    color:var(--primary);
    font-size:10px;
    text-transform:uppercase;
    letter-spacing:1px;
    font-weight:900;
}

.product h3{
    font-size:16px;
    margin:7px 0;
}

.rating{
    color:#f59e0b;
    font-size:12px;
}

.rating span{
    color:var(--muted);
}

.price-row{
    display:flex;
    gap:9px;
    align-items:center;
    margin:11px 0 15px;
}

.price{
    font-size:19px;
    font-weight:900;
}

.old-price{
    color:var(--muted);
    text-decoration:line-through;
    font-size:13px;
}

.product-buttons{
    display:grid;
    grid-template-columns:1fr 45px;
    gap:7px;
}

.add-cart{
    border:0;
    border-radius:12px;
    padding:12px;
    background:var(--gradient);
    color:white;
    font-weight:800;
}

.quick-btn{
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    border-radius:12px;
}

/* =========================================================
   DEAL
========================================================= */

.deal{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:450px;
    overflow:hidden;
    border-radius:30px;
    color:white;
    background:linear-gradient(120deg,#10061f,#24105a,#101c48);
}

.deal-image img{
    height:100%;
    object-fit:cover;
}

.deal-content{
    padding:60px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.deal-tag{
    color:#67e8f9;
    text-transform:uppercase;
    letter-spacing:2px;
    font-weight:900;
    font-size:12px;
}

.deal h2{
    font-size:45px;
    margin:12px 0;
}

.deal p{
    color:#bbb;
    line-height:1.7;
}

.deal-price{
    margin:20px 0;
}

.deal-price strong{
    font-size:38px;
}

.deal-price del{
    color:#777;
    margin-left:10px;
}

.countdown{
    display:flex;
    gap:10px;
    margin-bottom:25px;
}

.time{
    width:65px;
    height:65px;
    border-radius:15px;
    background:rgba(255,255,255,.08);
    border:1px solid rgba(255,255,255,.1);
    display:grid;
    place-items:center;
    text-align:center;
}

.time strong{
    font-size:20px;
    display:block;
}

.time small{
    color:#888;
    font-size:9px;
}

/* =========================================================
   RECOMMENDATIONS
========================================================= */

.recommend-box{
    background:linear-gradient(
        135deg,
        rgba(255,61,129,.1),
        rgba(124,58,237,.1),
        rgba(6,182,212,.1)
    );
    border:1px solid var(--border);
    padding:25px;
    border-radius:25px;
    margin-top:35px;
}

.recommend-box h3{
    margin-bottom:18px;
}

/* =========================================================
   REVIEWS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.review{
    background:var(--card);
    border:1px solid var(--border);
    padding:28px;
    border-radius:22px;
    transition:var(--transition);
}

.review:hover{
    transform:translateY(-6px);
    box-shadow:var(--shadow);
}

.review-stars{
    color:#f59e0b;
    margin-bottom:15px;
}

.review p{
    color:var(--muted);
    line-height:1.7;
    font-size:14px;
    margin-bottom:20px;
}

.customer{
    display:flex;
    align-items:center;
    gap:12px;
}

.customer img{
    width:45px;
    height:45px;
    border-radius:50%;
    object-fit:cover;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    border-radius:30px;
    padding:60px;
    text-align:center;
    color:white;
    background:var(--gradient);
    position:relative;
    overflow:hidden;
}

.newsletter h2{
    font-size:38px;
    margin-bottom:10px;
}

.newsletter p{
    margin-bottom:25px;
    color:rgba(255,255,255,.85);
}

.newsletter-form{
    max-width:500px;
    margin:auto;
    display:flex;
    gap:7px;
    padding:6px;
    background:white;
    border-radius:50px;
}

.newsletter-form input{
    flex:1;
    border:0;
    outline:0;
    padding:0 15px;
}

.newsletter-form button{
    border:0;
    padding:13px 22px;
    border-radius:50px;
    color:white;
    background:#111;
    font-weight:800;
}

/* =========================================================
   FOOTER
========================================================= */

footer{
    background:#0b0b12;
    color:white;
    padding:65px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-brand p{
    color:#888;
    line-height:1.7;
    max-width:320px;
    margin-top:15px;
}

.footer-col h4{
    margin-bottom:17px;
}

.footer-col a{
    display:block;
    color:#888;
    font-size:13px;
    margin-bottom:11px;
}

.footer-col a:hover{
    color:#ff3d81;
}

.socials{
    display:flex;
    gap:8px;
    margin-top:20px;
}

.socials a{
    width:38px;
    height:38px;
    display:grid;
    place-items:center;
    border-radius:50%;
    background:#191923;
}

.socials a:hover{
    background:var(--gradient);
    color:white;
}

.copyright{
    border-top:1px solid #222;
    margin-top:45px;
    padding-top:20px;
    text-align:center;
    color:#666;
    font-size:12px;
}

/* =========================================================
   CART DRAWER
========================================================= */

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.55);
    z-index:2000;
    display:none;
}

.overlay.active{
    display:block;
}

.cart-drawer{
    position:fixed;
    right:-450px;
    top:0;
    height:100vh;
    width:min(430px,95%);
    background:var(--card);
    z-index:2100;
    transition:.4s ease;
    box-shadow:-20px 0 60px rgba(0,0,0,.2);
    display:flex;
    flex-direction:column;
}

.cart-drawer.active{
    right:0;
}

.drawer-header{
    padding:22px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    border-bottom:1px solid var(--border);
}

.drawer-header h3{
    font-size:20px;
}

.close-btn{
    width:38px;
    height:38px;
    border:0;
    border-radius:50%;
    background:var(--bg);
    color:var(--text);
}

.cart-items{
    flex:1;
    overflow:auto;
    padding:20px;
}

.cart-item{
    display:grid;
    grid-template-columns:70px 1fr auto;
    gap:12px;
    padding:12px 0;
    border-bottom:1px solid var(--border);
}

.cart-item img{
    width:70px;
    height:70px;
    object-fit:cover;
    border-radius:12px;
}

.cart-item h4{
    font-size:13px;
    margin-bottom:5px;
}

.cart-item small{
    color:var(--muted);
}

.qty{
    display:flex;
    align-items:center;
    gap:7px;
    margin-top:8px;
}

.qty button{
    width:25px;
    height:25px;
    border:1px solid var(--border);
    background:var(--card);
    color:var(--text);
    border-radius:6px;
}

.remove{
    border:0;
    background:none;
    color:var(--red);
}

.drawer-footer{
    padding:20px;
    border-top:1px solid var(--border);
}

.total-row{
    display:flex;
    justify-content:space-between;
    margin-bottom:15px;
    font-weight:900;
}

.coupon{
    display:flex;
    gap:7px;
    margin-bottom:12px;
}

.coupon input{
    flex:1;
    border:1px solid var(--border);
    background:var(--bg);
    color:var(--text);
    border-radius:10px;
    padding:11px;
    outline:0;
}

.coupon button{
    border:0;
    padding:0 15px;
    border-radius:10px;
    color:white;
    background:var(--secondary);
    font-weight:800;
}

/* =========================================================
   MODALS
========================================================= */

.modal{
    position:fixed;
    inset:0;
    z-index:3000;
    display:none;
    place-items:center;
    background:rgba(0,0,0,.65);
    padding:20px;
}

.modal.active{
    display:grid;
}

.modal-box{
    width:min(650px,100%);
    max-height:90vh;
    overflow:auto;
    background:var(--card);
    color:var(--text);
    border-radius:25px;
    padding:28px;
    position:relative;
    box-shadow:0 30px 90px rgba(0,0,0,.3);
}

.modal-close{
    position:absolute;
    right:18px;
    top:18px;
    width:38px;
    height:38px;
    border:0;
    border-radius:50%;
    background:var(--bg);
    color:var(--text);
}

.quick-view{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:25px;
}

.quick-view img{
    height:320px;
    object-fit:cover;
    border-radius:20px;
}

.quick-info h2{
    margin:10px 0;
}

.quick-info p{
    color:var(--muted);
    line-height:1.7;
}

.modal-price{
    font-size:28px;
    font-weight:900;
    margin:18px 0;
}

/* =========================================================
   AUTH
========================================================= */

.auth-form{
    display:grid;
    gap:13px;
    margin-top:20px;
}

.auth-form input{
    width:100%;
    padding:14px;
    border:1px solid var(--border);
    border-radius:12px;
    background:var(--bg);
    color:var(--text);
    outline:0;
}

.auth-switch{
    text-align:center;
    color:var(--muted);
    margin-top:15px;
    font-size:13px;
}

.auth-switch button{
    border:0;
    background:none;
    color:var(--primary);
    font-weight:800;
}

/* =========================================================
   CHECKOUT
========================================================= */

.checkout-grid{
    display:grid;
    grid-template-columns:1.4fr 1fr;
    gap:25px;
}

.checkout-form{
    display:grid;
    gap:12px;
}

.checkout-form input,
.checkout-form select{
    padding:13px;
    border:1px solid var(--border);
    border-radius:10px;
    background:var(--bg);
    color:var(--text);
    outline:0;
}

.checkout-summary{
    background:var(--bg);
    padding:20px;
    border-radius:18px;
}

.checkout-summary div{
    display:flex;
    justify-content:space-between;
    padding:9px 0;
}

/* =========================================================
   COMPARE
========================================================= */

.compare-table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
}

.compare-table th,
.compare-table td{
    padding:13px;
    border-bottom:1px solid var(--border);
    text-align:left;
    font-size:13px;
}

.compare-table img{
    width:80px;
    height:80px;
    object-fit:cover;
    border-radius:10px;
}

/* =========================================================
   NOTIFICATION
========================================================= */

.toast{
    position:fixed;
    right:20px;
    bottom:25px;
    z-index:5000;
    background:var(--card);
    color:var(--text);
    border:1px solid var(--border);
    box-shadow:var(--shadow);
    padding:14px 18px;
    border-radius:15px;
    transform:translateY(120px);
    opacity:0;
    transition:.35s;
    display:flex;
    gap:10px;
    align-items:center;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
}

.toast i{
    color:var(--green);
}

/* =========================================================
   SUPPORT
========================================================= */

.support{
    position:fixed;
    right:22px;
    bottom:85px;
    z-index:1500;
    width:55px;
    height:55px;
    border:0;
    border-radius:50%;
    color:white;
    background:var(--gradient);
    box-shadow:0 15px 35px rgba(124,58,237,.35);
}

/* =========================================================
   MOBILE NAV
========================================================= */

.mobile-bottom{
    display:none;
}

/* =========================================================
   REVEAL
========================================================= */

.reveal{
    opacity:0;
    transform:translateY(25px);
    transition:.7s ease;
}

.reveal.show{
    opacity:1;
    transform:translateY(0);
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px){

    nav{
        display:none;
    }

    .menu-btn{
        display:grid;
        place-items:center;
    }

    .search{
        width:180px;
    }

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .trust-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .footer-grid{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:700px){

    .navbar{
        min-height:65px;
    }

    .search{
        display:none;
    }

    .hero{
        min-height:570px;
        border-radius:23px;
    }

    .hero h1{
        font-size:48px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
        gap:10px;
    }

    .product-image{
        height:210px;
    }

    .product-info{
        padding:13px;
    }

    .product h3{
        font-size:13px;
    }

    .product-buttons{
        grid-template-columns:1fr;
    }

    .quick-btn{
        display:none;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        height:280px;
    }

    .deal-content{
        padding:30px 22px;
    }

    .deal h2{
        font-size:32px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .newsletter{
        padding:40px 20px;
    }

    .newsletter h2{
        font-size:28px;
    }

    .newsletter-form{
        flex-direction:column;
        background:transparent;
    }

    .newsletter-form input{
        height:48px;
        border-radius:50px;
    }

    .newsletter-form button{
        height:48px;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

    .quick-view,
    .checkout-grid{
        grid-template-columns:1fr;
    }

    .quick-view img{
        height:240px;
    }

    .mobile-bottom{
        position:fixed;
        bottom:0;
        left:0;
        right:0;
        z-index:1400;
        background:rgba(255,255,255,.94);
        backdrop-filter:blur(15px);
        border-top:1px solid var(--border);
        display:grid;
        grid-template-columns:repeat(5,1fr);
        padding:8px 5px;
    }

    body.dark .mobile-bottom{
        background:rgba(20,20,30,.94);
    }

    .mobile-bottom button{
        border:0;
        background:none;
        color:var(--muted);
        font-size:10px;
        font-weight:700;
        display:flex;
        flex-direction:column;
        align-items:center;
        gap:4px;
    }

    .mobile-bottom i{
        font-size:17px;
    }

    .mobile-bottom button:hover{
        color:var(--primary);
    }

    body{
        padding-bottom:65px;
    }

    .support{
        bottom:80px;
    }
}

@media(max-width:430px){

    .hero h1{
        font-size:41px;
    }

    .hero-buttons{
        flex-direction:column;
        align-items:stretch;
    }

    .products{
        gap:8px;
    }

    .product-image{
        height:180px;
    }

    .trust-grid{
        grid-template-columns:1fr 1fr;
    }

    .trust-item strong{
        font-size:10px;
    }

    .trust-item small{
        font-size:8px;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }
}

</style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="top-bar">
    <i class="fas fa-bolt"></i>
    LIMITED TIME OFFER — Get up to 40% OFF + Free Shipping
</div>

<!-- =========================================================
     HEADER
========================================================= -->

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
    <li><a href="#products">Products</a></li>
    <li><a href="#deals">Deals</a></li>
    <li><a href="#reviews">Reviews</a></li>
</ul>
</nav>

<div class="nav-right">

<div class="search">
    <input id="searchInput"
           type="text"
           placeholder="Search products..."
           oninput="searchProducts()">
    <i class="fas fa-search"></i>
</div>

<button class="icon-btn" onclick="openAuth()">
    <i class="far fa-user"></i>
</button>

<button class="icon-btn" onclick="showWishlist()">
    <i class="far fa-heart"></i>
</button>

<button class="icon-btn" onclick="openCart()">
    <i class="fas fa-shopping-bag"></i>
    <span class="cart-count" id="cartCount">0</span>
</button>

<button class="icon-btn" onclick="toggleDarkMode()">
    <i class="fas fa-moon" id="themeIcon"></i>
</button>

</div>
</div>

<div class="mobile-menu" id="mobileMenu">
    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Products</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>
</div>

</header>

<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

<div class="container">

<div class="hero-content">

<div class="hero-badge">
    <i class="fas fa-sparkles"></i>
    FUTURE SHOPPING EXPERIENCE
</div>

<h1>
    Shop Smarter.<br>
    Live <span>Better.</span>
</h1>

<p>
    Discover technology, fashion, gadgets and lifestyle products
    selected for modern customers who expect quality, value and
    a seamless shopping experience.
</p>

<div class="hero-buttons">

<button class="btn btn-primary"
onclick="document.getElementById('products').scrollIntoView()">
    Explore Products
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
</section>

<!-- =========================================================
     TRUST
========================================================= -->

<section class="trust">

<div class="container trust-grid">

<div class="trust-item">
<i class="fas fa-truck-fast"></i>
<div>
<strong>Free Shipping</strong>
<small>Orders over $50</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-shield-halved"></i>
<div>
<strong>Secure Checkout</strong>
<small>Protected payments</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-rotate-left"></i>
<div>
<strong>Easy Returns</strong>
<small>30-day returns</small>
</div>
</div>

<div class="trust-item">
<i class="fas fa-headset"></i>
<div>
<strong>24/7 Support</strong>
<small>Always available</small>
</div>
</div>

</div>
</section>

<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section reveal" id="categories">

<div class="container">

<div class="section-heading">
<div class="eyebrow">Explore</div>
<h2>Shop By Category</h2>
<p>Find everything you need in one place.</p>
</div>

<div class="categories">

<div class="category">
<div class="category-icon">
<i class="fas fa-mobile-screen"></i>
</div>
<h4>Smartphones</h4>
<p>24 Products</p>
</div>

<div class="category">
<div class="category-icon">
<i class="fas fa-laptop"></i>
</div>
<h4>Laptops</h4>
<p>18 Products</p>
</div>

<div class="category">
<div class="category-icon">
<i class="fas fa-shirt"></i>
</div>
<h4>Fashion</h4>
<p>42 Products</p>
</div>

<div class="category">
<div class="category-icon">
<i class="fas fa-headphones"></i>
</div>
<h4>Gadgets</h4>
<p>31 Products</p>
</div>

<div class="category">
<div class="category-icon">
<i class="fas fa-shoe-prints"></i>
</div>
<h4>Footwear</h4>
<p>27 Products</p>
</div>

<div class="category">
<div class="category-icon">
<i class="fas fa-gem"></i>
</div>
<h4>Accessories</h4>
<p>39 Products</p>
</div>

</div>
</div>
</section>

<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section products-section reveal" id="products">

<div class="container">

<div class="section-heading">
<div class="eyebrow">Popular Picks</div>
<h2>Trending Products</h2>
<p>Smart products selected for today's customers.</p>
</div>

<div class="shop-toolbar">

<div class="filters">
<button class="filter-btn active" onclick="filterProducts('all',this)">
All
</button>

<button class="filter-btn" onclick="filterProducts('Smartphones',this)">
Phones
</button>

<button class="filter-btn" onclick="filterProducts('Laptops',this)">
Laptops
</button>

<button class="filter-btn" onclick="filterProducts('Fashion',this)">
Fashion
</button>

<button class="filter-btn" onclick="filterProducts('Gadgets',this)">
Gadgets
</button>

<button class="filter-btn" onclick="filterProducts('Footwear',this)">
Footwear
</button>
</div>

<select class="sort-select" onchange="sortProducts(this.value)">
<option value="default">Sort Products</option>
<option value="low">Price: Low to High</option>
<option value="high">Price: High to Low</option>
<option value="rating">Highest Rated</option>
</select>

</div>

<div class="products" id="productsGrid">

<!-- PRODUCT 1 -->

<div class="product"
data-category="Smartphones"
data-price="1099"
data-rating="4.9"
data-id="1">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85">

<span class="product-badge">NEW</span>

<div class="product-actions">

<button class="product-action"
onclick="toggleWishlist(1)">
<i class="far fa-heart" id="heart-1"></i>
</button>

<button class="product-action"
onclick="quickView(1)">
<i class="fas fa-eye"></i>
</button>

</div>
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

<div class="product-buttons">

<button class="add-cart"
onclick="addToCart(1)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

<button class="quick-btn"
onclick="addCompare(1)">
<i class="fas fa-scale-balanced"></i>
</button>

</div>

</div>
</div>

<!-- PRODUCT 2 -->

<div class="product"
data-category="Laptops"
data-price="1999"
data-rating="4.7"
data-id="2">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85">

<div class="product-actions">

<button class="product-action"
onclick="toggleWishlist(2)">
<i class="far fa-heart" id="heart-2"></i>
</button>

<button class="product-action"
onclick="quickView(2)">
<i class="fas fa-eye"></i>
</button>

</div>

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

<div class="product-buttons">

<button class="add-cart"
onclick="addToCart(2)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

<button class="quick-btn"
onclick="addCompare(2)">
<i class="fas fa-scale-balanced"></i>
</button>

</div>

</div>
</div>

<!-- PRODUCT 3 -->

<div class="product"
data-category="Gadgets"
data-price="349"
data-rating="4.9"
data-id="3">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85">

<span class="product-badge sale">SALE</span>

<div class="product-actions">

<button class="product-action"
onclick="toggleWishlist(3)">
<i class="far fa-heart" id="heart-3"></i>
</button>

<button class="product-action"
onclick="quickView(3)">
<i class="fas fa-eye"></i>
</button>

</div>

</div>

<div class="product-info">

<div class="product-category">Gadgets</div>

<h3>Premium Smart Watch</h3>

<div class="rating">
★★★★★ <span>(214)</span>
</div>

<div class="price-row">
<span class="price">$349</span>
<span class="old-price">$399</span>
</div>

<div class="product-buttons">

<button class="add-cart"
onclick="addToCart(3)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

<button class="quick-btn"
onclick="addCompare(3)">
<i class="fas fa-scale-balanced"></i>
</button>

</div>

</div>
</div>

<!-- PRODUCT 4 -->

<div class="product"
data-category="Footwear"
data-price="150"
data-rating="4.5"
data-id="4">

<div class="product-image">

<img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85">

<div class="product-actions">

<button class="product-action"
onclick="toggleWishlist(4)">
<i class="far fa-heart" id="heart-4"></i>
</button>

<button class="product-action"
onclick="quickView(4)">
<i class="fas fa-eye"></i>
</button>

</div>

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

<div class="product-buttons">

<button class="add-cart"
onclick="addToCart(4)">
<i class="fas fa-cart-plus"></i>
Add to Cart
</button>

<button class="quick-btn"
onclick="addCompare(4)">
<i class="fas fa-scale-balanced"></i>
</button>

</div>

</div>
</div>

</div>

<!-- RECOMMENDATIONS -->

<div class="recommend-box">

<h3>
<i class="fas fa-wand-magic-sparkles"></i>
Recommended For You
</h3>

<p style="color:var(--muted)">
Personalized product recommendations will appear here based
on your shopping activity.
</p>

</div>

</div>
</section>

<!-- =========================================================
     FLASH DEAL
========================================================= -->

<section class="section reveal" id="deals">

<div class="container">

<div class="deal">

<div class="deal-image">
<img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=90">
</div>

<div class="deal-content">

<div class="deal-tag">
⚡ Limited Time Deal
</div>

<h2>MacBook Air M2</h2>

<p>
Thin, powerful and beautiful.
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

<button class="btn btn-primary"
onclick="addToCart(5)">
<i class="fas fa-cart-plus"></i>
Grab This Deal
</button>

</div>
</div>
</div>
</section>

<!-- =========================================================
     DELIVERY
========================================================= -->

<section class="section reveal">

<div class="container">

<div class="section-heading">
<div class="eyebrow">Fast Delivery</div>
<h2>Check Delivery Availability</h2>
<p>Find out when your order can reach you.</p>
</div>

<div style="
max-width:550px;
margin:auto;
display:flex;
gap:8px;
">

<input
id="pincode"
type="text"
maxlength="6"
placeholder="Enter PIN / ZIP code"
style="
flex:1;
padding:14px;
border:1px solid var(--border);
border-radius:12px;
background:var(--card);
color:var(--text);
outline:0;
">

<button class="btn btn-primary"
onclick="checkDelivery()">
Check
</button>

</div>

<p id="deliveryResult"
style="
text-align:center;
margin-top:15px;
font-weight:700;
"></p>

</div>
</section>

<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section reveal" id="reviews">

<div class="container">

<div class="section-heading">
<div class="eyebrow">Customer Reviews</div>
<h2>Loved By Shoppers</h2>
<p>Real experiences from our customers.</p>
</div>

<div class="reviews">

<div class="review">
<div class="review-stars">★★★★★</div>

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
<div class="review-stars">★★★★★</div>

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
<div class="review-stars">★★★★★</div>

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

<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section reveal">

<div class="container">

<div class="newsletter">

<h2>Don't Miss What's Next</h2>

<p>
Get exclusive offers, early access and new product alerts.
</p>

<form class="newsletter-form"
onsubmit="subscribe(event)">

<input
id="email"
type="email"
placeholder="Enter your email"
required>

<button>
Subscribe
</button>

</form>

</div>
</div>
</section>

<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

<div class="container">

<div class="footer-grid">

<div class="footer-brand">

<a href="#" class="logo">
<i class="fas fa-bag-shopping"></i>
Nexus<span>Shop</span>
</a>

<p>
A next-generation shopping platform designed
to make online shopping simple, intelligent,
fast and enjoyable.
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
<a href="#products">New Arrivals</a>
<a href="#products">Trending</a>
<a href="#products">Best Sellers</a>
<a href="#deals">Deals</a>
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

<!-- =========================================================
     CART DRAWER
========================================================= -->

<div class="overlay" id="overlay" onclick="closeCart()"></div>

<div class="cart-drawer" id="cartDrawer">

<div class="drawer-header">

<h3>
<i class="fas fa-bag-shopping"></i>
Your Cart
</h3>

<button class="close-btn" onclick="closeCart()">
<i class="fas fa-xmark"></i>
</button>

</div>

<div class="cart-items" id="cartItems"></div>

<div class="drawer-footer">

<div class="coupon">

<input id="couponInput"
placeholder="Coupon code">

<button onclick="applyCoupon()">
Apply
</button>

</div>

<div class="total-row">
<span>Total</span>
<span id="cartTotal">$0.00</span>
</div>

<button class="btn btn-primary"
style="width:100%"
onclick="openCheckout()">

<i class="fas fa-lock"></i>
Secure Checkout

</button>

</div>
</div>

<!-- =========================================================
     QUICK VIEW MODAL
========================================================= -->

<div class="modal" id="quickModal">

<div class="modal-box">

<button class="modal-close"
onclick="closeModal('quickModal')">
<i class="fas fa-xmark"></i>
</button>

<div class="quick-view">

<img id="quickImage">

<div class="quick-info">

<div class="eyebrow" id="quickCategory">
Product
</div>

<h2 id="quickTitle">
Product
</h2>

<div class="rating">
★★★★★
</div>

<div class="modal-price"
id="quickPrice">
$0
</div>

<p id="quickDescription">
Premium product with excellent quality and
modern design.
</p>

<br>

<button class="btn btn-primary"
id="quickAdd">
<i class="fas fa-cart-plus"></i>
Add To Cart
</button>

</div>
</div>
</div>
</div>

<!-- =========================================================
     AUTH MODAL
========================================================= -->

<div class="modal" id="authModal">

<div class="modal-box">

<button class="modal-close"
onclick="closeModal('authModal')">
<i class="fas fa-xmark"></i>
</button>

<h2 id="authTitle">
Welcome Back
</h2>

<p style="color:var(--muted);margin-top:6px">
Login to continue shopping.
</p>

<form class="auth-form"
onsubmit="loginUser(event)">

<input
id="authName"
type="text"
placeholder="Full name"
style="display:none">

<input
id="authEmail"
type="email"
placeholder="Email address"
required>

<input
type="password"
placeholder="Password"
required>

<button class="btn btn-primary">
Continue
</button>

</form>

<div class="auth-switch">

<span id="authSwitchText">
Don't have an account?
</span>

<button onclick="toggleAuthMode()">
Sign Up
</button>

</div>

</div>
</div>

<!-- =========================================================
     CHECKOUT MODAL
========================================================= -->

<div class="modal" id="checkoutModal">

<div class="modal-box">

<button class="modal-close"
onclick="closeModal('checkoutModal')">
<i class="fas fa-xmark"></i>
</button>

<h2>Secure Checkout</h2>

<p style="color:var(--muted);margin:7px 0 20px">
Complete your order.
</p>

<div class="checkout-grid">

<form class="checkout-form"
onsubmit="placeOrder(event)">

<input
required
placeholder="Full Name">

<input
required
type="email"
placeholder="Email Address">

<input
required
placeholder="Phone Number">

<input
required
placeholder="Delivery Address">

<input
required
placeholder="City">

<input
required
placeholder="PIN / ZIP Code">

<select required>
<option value="">Payment Method</option>
<option>Cash on Delivery</option>
<option>Credit / Debit Card</option>
<option>UPI</option>
<option>PayPal</option>
</select>

<button class="btn btn-primary">
<i class="fas fa-lock"></i>
Place Order
</button>

</form>

<div class="checkout-summary">

<h3>Order Summary</h3>

<div>
<span>Items</span>
<strong id="checkoutItems">0</strong>
</div>

<div>
<span>Subtotal</span>
<strong id="checkoutSubtotal">$0</strong>
</div>

<div>
<span>Discount</span>
<strong id="checkoutDiscount">$0</strong>
</div>

<div>
<span>Shipping</span>
<strong>FREE</strong>
</div>

<hr style="border:0;border-top:1px solid var(--border)">

<div>
<strong>Total</strong>
<strong id="checkoutTotal">$0</strong>
</div>

</div>

</div>
</div>
</div>

<!-- =========================================================
     COMPARE MODAL
========================================================= -->

<div class="modal" id="compareModal">

<div class="modal-box">

<button class="modal-close"
onclick="closeModal('compareModal')">
<i class="fas fa-xmark"></i>
</button>

<h2>Compare Products</h2>

<div id="compareContent"></div>

</div>
</div>

<!-- =========================================================
     TOAST
========================================================= -->

<div class="toast" id="toast">
<i class="fas fa-circle-check"></i>
<span id="toastMessage">Success</span>
</div>

<!-- =========================================================
     SUPPORT
========================================================= -->

<button class="support"
onclick="supportMessage()">

<i class="fas fa-headset"></i>

</button>

<!-- =========================================================
     MOBILE BOTTOM NAV
========================================================= -->

<div class="mobile-bottom">

<button onclick="window.scrollTo({top:0,behavior:'smooth'})">
<i class="fas fa-house"></i>
Home
</button>

<button onclick="document.getElementById('products').scrollIntoView()">
<i class="fas fa-store"></i>
Shop
</button>

<button onclick="showWishlist()">
<i class="fas fa-heart"></i>
Wishlist
</button>

<button onclick="openCart()">
<i class="fas fa-bag-shopping"></i>
Cart
</button>

<button onclick="openAuth()">
<i class="fas fa-user"></i>
Account
</button>

</div>

<script>

/* =========================================================
   PRODUCT DATABASE
========================================================= */

const products = {

1:{
    id:1,
    title:"iPhone 14 Pro Max",
    category:"Smartphones",
    price:1099,
    image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

2:{
    id:2,
    title:'MacBook Pro 14"',
    category:"Laptops",
    price:1999,
    image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

3:{
    id:3,
    title:"Premium Smart Watch",
    category:"Gadgets",
    price:349,
    image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
},

4:{
    id:4,
    title:"Air Max Premium",
    category:"Footwear",
    price:150,
    image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

5:{
    id:5,
    title:"MacBook Air M2",
    category:"Laptops",
    price:999,
    image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=90"
}

};

/* =========================================================
   LOCAL STORAGE
========================================================= */

let cart =
JSON.parse(localStorage.getItem("nexusCart")) || [];

let wishlist =
JSON.parse(localStorage.getItem("nexusWishlist")) || [];

let compare =
JSON.parse(localStorage.getItem("nexusCompare")) || [];

let discount=0;

/* =========================================================
   SAVE STATE
========================================================= */

function saveState(){

localStorage.setItem(
"nexusCart",
JSON.stringify(cart)
);

localStorage.setItem(
"nexusWishlist",
JSON.stringify(wishlist)
);

localStorage.setItem(
"nexusCompare",
JSON.stringify(compare)
);

}

/* =========================================================
   TOAST
========================================================= */

function toast(message){

const box=document.getElementById("toast");

document.getElementById("toastMessage")
.textContent=message;

box.classList.add("show");

setTimeout(()=>{
box.classList.remove("show");
},2500);

}

/* =========================================================
   CART
========================================================= */

function addToCart(id){

const product=products[id];

if(!product){
return;
}

const existing=cart.find(
item=>item.id===id
);

if(existing){

existing.qty++;

}else{

cart.push({
    ...product,
    qty:1
});

}

saveState();
renderCart();

toast(product.title+" added to cart 🛒");

}

function renderCart(){

const container=
document.getElementById("cartItems");

if(cart.length===0){

container.innerHTML=`
<div style="
text-align:center;
padding:60px 10px;
color:var(--muted);
">
<i class="fas fa-bag-shopping"
style="font-size:45px;margin-bottom:15px">
</i>

<h3>Your cart is empty</h3>

<p>Add some amazing products.</p>
</div>
`;

}else{

container.innerHTML=cart.map(item=>`

<div class="cart-item">

<img src="${item.image}">

<div>

<h4>${item.title}</h4>

<small>$${item.price}</small>

<div class="qty">

<button onclick="changeQty(${item.id},-1)">
-
</button>

<strong>${item.qty}</strong>

<button onclick="changeQty(${item.id},1)">
+
</button>

</div>

</div>

<button class="remove"
onclick="removeFromCart(${item.id})">

<i class="fas fa-trash"></i>

</button>

</div>

`).join("");

}

const count=
cart.reduce((sum,item)=>sum+item.qty,0);

document.getElementById("cartCount")
.textContent=count;

let total=
cart.reduce(
(sum,item)=>sum+(item.price*item.qty),
0
);

const discountAmount=
total*(discount/100);

total-=discountAmount;

document.getElementById("cartTotal")
.textContent="$"+total.toFixed(2);

}

/* =========================================================
   QUANTITY
========================================================= */

function changeQty(id,amount){

const item=
cart.find(item=>item.id===id);

if(!item)return;

item.qty+=amount;

if(item.qty<=0){

cart=
cart.filter(item=>item.id!==id);

}

saveState();
renderCart();

}

/* =========================================================
   REMOVE
========================================================= */

function removeFromCart(id){

cart=
cart.filter(item=>item.id!==id);

saveState();
renderCart();

toast("Product removed from cart");

}

/* =========================================================
   CART DRAWER
========================================================= */

function openCart(){

renderCart();

document.getElementById("cartDrawer")
.classList.add("active");

document.getElementById("overlay")
.classList.add("active");

}

function closeCart(){

document.getElementById("cartDrawer")
.classList.remove("active");

document.getElementById("overlay")
.classList.remove("active");

}

/* =========================================================
   COUPONS
========================================================= */

function applyCoupon(){

const code=
document.getElementById("couponInput")
.value
.trim()
.toUpperCase();

if(code==="NEXUS10"){

discount=10;
toast("10% discount applied 🎉");

}else if(code==="WELCOME20"){

discount=20;
toast("20% welcome discount applied 🎉");

}else{

discount=0;
toast("Invalid coupon code");

}

renderCart();

}

/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id){

if(wishlist.includes(id)){

wishlist=
wishlist.filter(item=>item!==id);

toast("Removed from wishlist");

}else{

wishlist.push(id);

toast("Added to wishlist ❤️");

}

saveState();
updateWishlistIcons();

}

function updateWishlistIcons(){

wishlist.forEach(id=>{

const icon=
document.getElementById("heart-"+id);

if(icon){

icon.classList.remove("far");
icon.classList.add("fas");

icon.style.color="var(--primary)";

}

});

}

function showWishlist(){

if(wishlist.length===0){

toast("Your wishlist is empty ❤️");
return;

}

const names=
wishlist.map(
id=>products[id]?.title
).join(", ");

toast("Wishlist: "+names);

}

/* =========================================================
   SEARCH
========================================================= */

function searchProducts(){

const query=
document
.getElementById("searchInput")
.value
.toLowerCase();

document
.querySelectorAll(".product")
.forEach(product=>{

const title=
product
.querySelector("h3")
.textContent
.toLowerCase();

const category=
product
.querySelector(".product-category")
.textContent
.toLowerCase();

product.style.display=
title.includes(query) ||
category.includes(query)
? ""
: "none";

});

}

/* =========================================================
   FILTER
========================================================= */

function filterProducts(category,button){

document
.querySelectorAll(".filter-btn")
.forEach(btn=>
btn.classList.remove("active")
);

button.classList.add("active");

document
.querySelectorAll(".product")
.forEach(product=>{

if(
category==="all" ||
product.dataset.category===category
){

product.style.display="";

}else{

product.style.display="none";

}

});

}

/* =========================================================
   SORT
========================================================= */

function sortProducts(type){

const grid=
document.getElementById("productsGrid");

const cards=
[...grid.querySelectorAll(".product")];

cards.sort((a,b)=>{

const priceA=
Number(a.dataset.price);

const priceB=
Number(b.dataset.price);

const ratingA=
Number(a.dataset.rating);

const ratingB=
Number(b.dataset.rating);

if(type==="low")
return priceA-priceB;

if(type==="high")
return priceB-priceA;

if(type==="rating")
return ratingB-ratingA;

return Number(a.dataset.id)-
Number(b.dataset.id);

});

cards.forEach(card=>
grid.appendChild(card)
);

}

/* =========================================================
   QUICK VIEW
========================================================= */

function quickView(id){

const product=products[id];

if(!product)return;

document.getElementById("quickImage")
.src=product.image;

document.getElementById("quickTitle")
.textContent=product.title;

document.getElementById("quickCategory")
.textContent=product.category;

document.getElementById("quickPrice")
.textContent="$"+product.price;

document.getElementById("quickDescription")
.textContent=
"Premium "+product.category+
" product designed for modern customers. "+
"High quality, reliable performance and excellent value.";

document.getElementById("quickAdd")
.onclick=()=>{
addToCart(id);
closeModal("quickModal");
};

document
.getElementById("quickModal")
.classList.add("active");

}

/* =========================================================
   COMPARE
========================================================= */

function addCompare(id){

if(compare.includes(id)){

toast("Already added to comparison");
return;

}

if(compare.length>=3){

toast("Compare maximum 3 products");
return;

}

compare.push(id);

saveState();

toast("Added to comparison ⚖️");

if(compare.length>=2){

showCompare();

}

}

function showCompare(){

if(compare.length===0){

toast("No products selected");
return;

}

const content=
document.getElementById("compareContent");

content.innerHTML=`

<table class="compare-table">

<tr>
<th>Product</th>
${compare.map(id=>`
<td>
<img src="${products[id].image}">
</td>
`).join("")}
</tr>

<tr>
<th>Name</th>
${compare.map(id=>`
<td>${products[id].title}</td>
`).join("")}
</tr>

<tr>
<th>Category</th>
${compare.map(id=>`
<td>${products[id].category}</td>
`).join("")}
</tr>

<tr>
<th>Price</th>
${compare.map(id=>`
<td>$${products[id].price}</td>
`).join("")}
</tr>

<tr>
<th>Action</th>
${compare.map(id=>`
<td>
<button
class="btn btn-primary"
onclick="addToCart(${id})">
Add
</button>
</td>
`).join("")}
</tr>

</table>

<br>

<button
class="btn btn-light"
style="background:var(--bg);color:var(--text)"
onclick="clearCompare()">

Clear Comparison

</button>
`;

document
.getElementById("compareModal")
.classList.add("active");

}

function clearCompare(){

compare=[];

saveState();

closeModal("compareModal");

toast("Comparison cleared");

}

/* =========================================================
   AUTH
========================================================= */

let signup=false;

function openAuth(){

document
.getElementById("authModal")
.classList.add("active");

}

function toggleAuthMode(){

signup=!signup;

document.getElementById("authTitle")
.textContent=
signup
?"Create Your Account"
:"Welcome Back";

document.getElementById("authName")
.style.display=
signup
?"block"
:"none";

document.getElementById("authSwitchText")
.textContent=
signup
?"Already have an account?"
:"Don't have an account?";

document
.querySelector("#authModal .auth-switch button")
.textContent=
signup
?"Login"
:"Sign Up";

}

function loginUser(event){

event.preventDefault();

const email=
document.getElementById("authEmail")
.value;

localStorage.setItem(
"nexusUser",
email
);

closeModal("authModal");

toast(
signup
?"Account created successfully 🎉"
:"Welcome back 👋"
);

}

/* =========================================================
   CHECKOUT
========================================================= */

function openCheckout(){

if(cart.length===0){

toast("Your cart is empty");
return;

}

const count=
cart.reduce(
(sum,item)=>sum+item.qty,
0
);

const subtotal=
cart.reduce(
(sum,item)=>sum+(item.price*item.qty),
0
);

const discountAmount=
subtotal*(discount/100);

const total=
subtotal-discountAmount;

document.getElementById("checkoutItems")
.textContent=count;

document.getElementById("checkoutSubtotal")
.textContent="$"+subtotal.toFixed(2);

document.getElementById("checkoutDiscount")
.textContent="-$"+discountAmount.toFixed(2);

document.getElementById("checkoutTotal")
.textContent="$"+total.toFixed(2);

closeCart();

document
.getElementById("checkoutModal")
.classList.add("active");

}

function placeOrder(event){

event.preventDefault();

const orderId=
"NEXUS-"+Math.floor(
100000+Math.random()*900000
);

localStorage.setItem(
"nexusLastOrder",
orderId
);

cart=[];
discount=0;

saveState();
renderCart();

closeModal("checkoutModal");

toast(
"Order "+orderId+" placed successfully 📦"
);

}

/* =========================================================
   DELIVERY
========================================================= */

function checkDelivery(){

const pin=
document.getElementById("pincode")
.value
.trim();

const result=
document.getElementById("deliveryResult");

if(!/^\d{5,6}$/.test(pin)){

result.textContent=
"Please enter a valid PIN / ZIP code.";

result.style.color="var(--red)";

return;

}

result.textContent=
"✓ Delivery available. Estimated arrival: 2–4 business days.";

result.style.color="var(--green)";

}

/* =========================================================
   DARK MODE
========================================================= */

function toggleDarkMode(){

document.body.classList.toggle("dark");

const dark=
document.body.classList.contains("dark");

localStorage.setItem(
"nexusDark",
dark
);

document.getElementById("themeIcon")
.className=
dark
?"fas fa-sun"
:"fas fa-moon";

}

/* =========================================================
   MOBILE MENU
========================================================= */

function toggleMenu(){

const menu=
document.getElementById("mobileMenu");

menu.style.display=
menu.style.display==="flex"
?"none"
:"flex";

if(menu.style.display==="flex"){

menu.style.flexDirection="column";

}

}

/* =========================================================
   MODAL
========================================================= */

function closeModal(id){

document
.getElementById(id)
.classList.remove("active");

}

/* =========================================================
   NEWSLETTER
========================================================= */

function subscribe(event){

event.preventDefault();

const email=
document.getElementById("email")
.value;

localStorage.setItem(
"nexusNewsletter",
email
);

event.target.reset();

toast(
"Subscribed successfully 🎉"
);

}

/* =========================================================
   SUPPORT
========================================================= */

function supportMessage(){

toast(
"Support team is available 24/7 💬"
);

}

/* =========================================================
   COUNTDOWN
========================================================= */

let totalSeconds=
8*3600+42*60+18;

function updateTimer(){

if(totalSeconds<=0){

totalSeconds=24*3600;

}

const hours=
Math.floor(totalSeconds/3600);

const minutes=
Math.floor(
(totalSeconds%3600)/60
);

const seconds=
totalSeconds%60;

document.getElementById("hours")
.textContent=
String(hours).padStart(2,"0");

document.getElementById("minutes")
.textContent=
String(minutes).padStart(2,"0");

document.getElementById("seconds")
.textContent=
String(seconds).padStart(2,"0");

totalSeconds--;

}

setInterval(updateTimer,1000);

/* =========================================================
   SCROLL REVEAL
========================================================= */

const observer=
new IntersectionObserver(
entries=>{

entries.forEach(entry=>{

if(entry.isIntersecting){

entry.target.classList.add("show");

}

});

},
{
threshold:.12
}
);

document
.querySelectorAll(".reveal")
.forEach(el=>
observer.observe(el)
);

/* =========================================================
   INITIALIZE
========================================================= */

if(
localStorage.getItem("nexusDark")==="true"
){

document.body.classList.add("dark");

document.getElementById("themeIcon")
.className="fas fa-sun";

}

updateWishlistIcons();
renderCart();

/* =========================================================
   ESC KEY
========================================================= */

document.addEventListener(
"keydown",
event=>{

if(event.key==="Escape"){

closeCart();

document
.querySelectorAll(".modal")
.forEach(modal=>
modal.classList.remove("active")
);

}

}
);

</script>

</body>
</html>
```
