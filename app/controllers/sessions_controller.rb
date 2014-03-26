class SessionsController < ApplicationController

	def new
	end
	
	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# sign in the user and re-direct to the users sign in page
			sign_in user
			redirect_to user
		else
			flash.now[:error] = 'Invalid email/password combination' 
				#flash.now is specifically designed to only show the error on the current page
			render 'new'
		end
	end
	
	def destroy
	end

end
