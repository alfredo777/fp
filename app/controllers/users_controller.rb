class UsersController < ApplicationController
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
