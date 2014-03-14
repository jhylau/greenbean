class SignupsController < ApplicationController
	def new
		@signup = Signup.new
	end

	def create
	 	@signup = Signup.new(signup_params)
    	if @signup.save
      		redirect_to("/", :notice => 'Successfully Signed Up.')
    	else
      		render :action => "new"
    	end
    end

    private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def signup_params
      params.require(:signup).permit!
    end
end