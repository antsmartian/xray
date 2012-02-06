<html>
<head>
	<title>Play With Pixel</title>
	<meta name="layout" content="main" />
	<style> 
	canvas { margin: 0px auto 0; display: block; }
</style> 
</head>
<body>
 <h1> <span style="position:relative; left:150px;">Thanks for using my app!! Have a Groovy Day! <b>Don't refresh the browser!</b> </span></h1>
<br />
<br />
<canvas id="canvas" height="900" width="800"></canvas> 
<g:javascript>
    var canvas = document.getElementById('canvas'), 
    img = document.createElement('img'),
    ctx = canvas.getContext('2d');
   img.onload = function () {
  ctx.drawImage(img, 0, 0);
  var pixels = ctx.getImageData(0, 0, img.width, img.height);
  var inr = 0
  for (var i = 0; i < pixels.data.length; i += 4) {
	 var r = pixels.data[i];
    var g = pixels.data[i+1];
    var b = pixels.data[i+2];
    var v = (0.2126*r + 0.7152*g + 0.0722*b >= 110) ? 255 : 0;
    pixels.data[i] = pixels.data[i+1] =  pixels.data[i+2] = v;

  }
  ctx.putImageData(pixels, 0, 0);
};
img.src = "${createLink(action: 'image')}"
</g:javascript>
<br />
<br />
<h1> <span style="position:relative; left:300px;">--Pixel processing done via HTML5 api's </sapn> </h1>
</body>
</html>
