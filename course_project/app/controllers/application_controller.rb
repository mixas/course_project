class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include SessionsHelper
  
  helper_method :admin?
  
  def admin?
    false
  end
end
