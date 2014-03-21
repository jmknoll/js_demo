class UsersController < ApplicationController
  
  def show
	@user = User.find(params[:id])
  end
  
  def new
	@user = User.new
  end
  
  def create
	@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Thank you for signing up! Please check your email to confirm your account."
			redirect_to @user
		else
			render 'new'
		end
	end
end