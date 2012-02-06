<html>
<head>
	<title>Upload Image</title>
	<meta name="layout" content="main" />
</head>
	<body>	
		<div id="create-user" class="content scaffold-create" role="main">
		<br />
		<h1>A simple pixel processing application</h1>
		<br />
		<br />
		<br />
		<pre>      <b>Upload only .jpg,.gif format :D </b></pre>
		<br />
		<g:uploadForm controller="image" action ="upload">
			<pre>      <b>Photo:</b>   <input name="photo" type="file" /> <g:submitButton name="convert" value="convert" /></pre> <br />
		<span style="position:relative; left:45px; font-size:12px;">    <b> You want image as   <g:radioGroup name="userChoice" labels="['Xray','Pencil Sketch']"  values="['X','P']" value="X"> ${it.label} ${it.radio}  
</g:radioGroup> </b> </span>
		</g:uploadForm>
		<br />
		
		<pre><b>      
				
				
      Note: You can pass the image of size 900*800 (height*width) for better result.
            Upload small size images to get result quickly!<b>




		</pre>
		
		
		</div>
	</body>
</html>
