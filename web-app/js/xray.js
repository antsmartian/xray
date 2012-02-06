var canvas = document.getElementById('canvas'), 
    img = document.createElement('img'),
    ctx = canvas.getContext('2d');
   img.onload = function () {
  ctx.drawImage(img, 0, 0);
  var pixels = ctx.getImageData(0, 0, img.width, img.height);
  
  for (var i = 0; i < pixels.data.length; i += 4) {
    pixels.data[i+0] = 255 - pixels.data[i+0];
    pixels.data[i+1] = 255 - pixels.data[i+2];
    pixels.data[i+2] = 255 - pixels.data[i+1];
  }
  ctx.putImageData(pixels, 0, 0);
};
img.src = "${createLink(action: 'image')}"
