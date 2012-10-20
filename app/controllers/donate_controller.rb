class DonateController < ApplicationController
  skip_before_filter :redirect_https
  skip_before_filter :authorize
  def prayer
  end
end
