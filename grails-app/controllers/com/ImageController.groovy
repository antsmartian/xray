package com
import org.springframework.web.multipart.MultipartFile

class Photo {
	byte[] photo
}
class ImageController {
	def scaffold = "true"
	def form() {
		//pass through the form
	}
	
	def upload = { /* Photo puc->
		def file = request.getFile('photo')
		if(file.empty)
		{
			flash.message = "file cannot be empty"
			render(view:"form")	
			return
		}
		
		File ftmp = File.createTempFile("test",".jpg",new File(""))
		file.transferTo(ftmp)
		[filePath : ftmp.getAbsolutePath()] */
		def file = request.getFile('photo')

    		session.file = [
        		bytes: file.inputStream.bytes,
        		contentType: file.contentType
   		 ]
		  println params.userChoice
                  if(params.userChoice == "X")
	   		 redirect action: 'elsewhere'
		  else if(params.userChoice == "P")
			redirect action: 'pencil'
		}
	def elsewhere = { }

        def pencil = { }

	def image = {
	    if (!session.file) {
	        response.sendError(404)
	        return
	    }
	
	    def file = session.file
	    session.removeAttribute 'file'
	
	    response.setHeader('Cache-Control', 'no-cache')
	    response.contentType = file.contentType
	    response.outputStream << file.bytes
	    response.outputStream.flush()

}
	
}
