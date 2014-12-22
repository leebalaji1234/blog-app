class SessionsController < ApplicationController
	def new
	end
	def create
	 
	
	user = User.find_by_email(params[:session][:email])
# abort "Nosdfsdfsdf matches found : #{user}"
# comment addede
		if user
			if user.password == params[:session][:password]
				session[:current_user_id]= user.id
				if current_user
					redirect_to user_path(current_user)
				else
					render 'new'	
				end
			else
			 render 'new'
			end	
		else
			render 'new'
		end
	end
   def destroy 
	 session[:current_user_id]= nil
     redirect_to root_path
   end 
end
