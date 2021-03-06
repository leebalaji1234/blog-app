class UsersController < ApplicationController
   before_filter :login_required, :except => [:create,:new]
     def index
     	@users = User.all
     end
	 def new
	 	 @user = User.new
	 end
	 def create
		@user = User.new(user_params)
		if @user.save
		redirect_to user_path(@user)
		else
			redirect_to :back, :notice => 'Please verify the data entered! '
		end
	 end
     def show 
		@user = User.find(params[:id])        
	 end
     private
	  def user_params
		params.require(:user).permit(:name, :email, :password)
	  end    
end
