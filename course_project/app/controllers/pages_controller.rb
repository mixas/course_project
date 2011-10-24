class PagesController < ApplicationController
  layout = 'application'
  
  def home
    @title = "Home page"
  end

  def about
    @title = "About"
  end

end
