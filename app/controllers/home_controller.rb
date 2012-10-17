class HomeController < ApplicationController
  skip_before_filter :authorize
  def index
    redirect_to root_path
  end
  
  def web_page
    if current_user
      redirect_to :prayers
    else
    end
  end
  
end
