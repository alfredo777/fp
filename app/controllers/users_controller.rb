class UsersController < ApplicationController
   skip_before_filter :redirect_https
   def new
    @user = User.new(params[:user])
   
    @user=current_user.name
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end
  
 
  
  #def 
 
end
