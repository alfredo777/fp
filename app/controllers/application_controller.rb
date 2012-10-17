class ApplicationController < ActionController::Base
  protect_from_forgery
     helper_method  :users
    helper_method :current_user
       helper_method :current_user_name
       helper_method :current_user_image
       helper_method :current_user_id
       helper_method :current_user_uid
       helper_method :current_pray
    before_filter :authorize
   
  
  private
  
 
  def current_user
    
    current_user ||= User.find(session[:user_id]) if session[:user_id]
    
  end
       
  def users
     @users = User.all
   end
   
   def current_pray
     @prayer = Prayer.find(params[:id])
   end
       
  def not_authenticated
    redirect_to root_url, :alert => "First login to access this page."
  end
  protected
   def authorize
      unless User.find_by_id(session[:user_id])
      redirect_to root_url, :notice => "Please log in"
      end 
  end
end
