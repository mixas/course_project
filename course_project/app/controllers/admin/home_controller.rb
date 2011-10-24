class Admin::HomeController < ApplicationController
  layout 'admin'
  
  def index
    @title = "Admin page"
  end
end
