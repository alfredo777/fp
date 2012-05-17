class SessionsController < ApplicationController
  skip_before_filter :authorize
      def create
         omniauth = request.env["omniauth.auth"]
         user = User.find_by_provider_and_uid(omniauth["provider"], omniauth["uid"]) || User.create_with_omniauth(omniauth)
         session[:user_id] = user.id
         current_user.save
         redirect_to http://severe-flower-1979.herokuapp.com/prayers, :notice => "Signed in!"
               
  
  end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
end
end

