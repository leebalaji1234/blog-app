module SessionsHelper
def current_user
    current_user = User.find(session[:current_user_id]) if (session[:current_user_id])
end
def signed_in?
!current_user.nil?
end
def login_required
   redirect_to signin_path, :notice => 'Login required!' unless signed_in?
 end
end
