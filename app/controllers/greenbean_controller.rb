class GreenbeanController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:create]
	# so that respond_with knows which formats are
	# allowed in each of the individual actions
	respond_to :json, :html


	#picture {:greenbean => {:name=> "test", :starbucks => "true", :file => "base64 awesomeness"}}
	def create
		#create a new tempfile named fileupload
		# tempfile = Tempfile.new("fileupload")
		# tempfile.binmode
		# #get the file and decode it with base64 then write it to the tempfile
		# tempfile.write(Base64.decode64(params["greenbean"]["image"]))
		# #create a new uploaded file
		# uploaded_file = ActionDispatch::Http::UploadedFile.new(:content_type=> 'test', :headers=>'test', :original_filename =>'test', :tempfile => tempfile ) 
		# #replace picture_path with the new uploaded file
		# params["greenbean"]["image"] =  uploaded_file
		@greenbean = Greenbean.new(greenbean_params)
		decoded_file = Base64.decode64(params[:greenbean][:image])
		begin
		  	file = Tempfile.new(['test', '.jpg']) 
		  	file.binmode
		  	file.write decoded_file
		  	file.close
		  	@greenbean.image =  file
		  	if @greenbean.save
				respond_with @greenbean
			else
				respond_with @greenbean
				Rails.logger.debug "Errors: #{@greenbean.errors.to_yaml}"
			end
		ensure
		  file.unlink
		end
		
	end

	private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def greenbean_params
      params.require(:greenbean).permit!
    end
end