<html>
<head>
<title>Shopping Frontend</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
	  width:70%;
   height: 700px;
  margin: auto;
  }
  </style>


  
 <style>
body {
    background-image: url("resources/images/images3.jpg");
}

p.italic {
    font-style: italic;
}

 p {
    font-size:70px;
}
body {
    color: white;
}


</style>
</head>
<body>
<div>
<jsp:include page="header.jsp" />
  
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/mac lip.jpg" alt="lipsticks" style="width:70%;">
      </div>

      <div class="item">
        <img src="resources/images/eye product.jpg" alt="eye product" style="width:70%;">
      </div>
    
      <div class="item">
        <img src="resources/images/brush.jpg" alt="brush" style="width:70%;">
      </div>
      
      <div class="item">
        <img src="resources/images/foundation.jpg" alt="foundation" style="width:70%;">
      </div>
      
      <div class="item">
        <img src="resources/images/mac5.jpg" alt="nail paints" style="width:70%;">
      </div>
      
      
     <div class="item">
        <img src="resources/images/mac3.jpg" alt="compact powder" style="width:70%;">
      </div>
    </div>

    <!-- Left and right controls-->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</div>
<jsp:include page="footer.jsp"/>

</body>
</html>
