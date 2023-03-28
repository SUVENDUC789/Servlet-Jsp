<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://colorlib.com/etc/regform/colorlib-regform-26/fonts/linearicons/style.css">

<link rel="stylesheet"
	href="https://colorlib.com/etc/regform/colorlib-regform-26/css/style.css">
<meta name="robots" content="noindex, follow">
<script nonce="124cc438-66b7-4b37-98d7-15a2a69286a9">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})))))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body>
	<!-- style="background: url(https://wallpapershome.com/images/pages/ico_h/2744.jpg); background-size: cover; background-attachment: fixed;" -->
	<div class="wrapper">
		<div class="inner">
			<!-- <img src="https://colorlib.com/etc/regform/colorlib-regform-26/images/image-1.png" alt="" class="image-1"> -->


			<form action="check" method="post">
				<h3>Register Here</h3>
				<!-- <h3>Because Offer closes soon !</h3>  -->
				<div class="form-holder">
					<span class="lnr lnr-user"></span> <input type="text"
						class="form-control" placeholder="Username" name="name">
				</div>
				<div class="form-holder">
					<span class="lnr lnr-phone-handset"></span> <input type="text"
						class="form-control" placeholder="Phone Number" name="phone">
				</div>
				<div class="form-holder">
					<span class="lnr lnr-envelope"></span> <input type="text"
						class="form-control" placeholder="Mail" name="email">
				</div>

				<button>
					<span>Register</span>
				</button>
			</form>
			<img
				src="https://colorlib.com/etc/regform/colorlib-regform-26/images/image-2.png"
				alt="" class="image-2">
		</div>
	</div>


	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vb26e4fa9e5134444860be286fd8771851679335129114"
		integrity="sha512-M3hN/6cva/SjwrOtyXeUa5IuCT0sedyfT+jK/OV+s+D0RnzrTfwjwJHhd+wYfMm9HJSrZ1IKksOdddLuN6KOzw=="
		data-cf-beacon='{"rayId":"7aeedfebf8c585e4","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.3.0","si":100}'
		crossorigin="anonymous"></script>



	
</body>
</html>