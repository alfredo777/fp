class SessionsController < ApplicationController
  skip_before_filter :redirect_https
   skip_before_filter :authorize
        def create
          omniauth = request.env["omniauth.auth"]
          user = User.find_by_provider_and_uid(omniauth["provider"], omniauth["uid"]) || User.create_with_omniauth(omniauth)
          puts user
          session[:user_id] = user.id
          redirect_to prayers_url, :notice => "Signed in!"
        end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end

