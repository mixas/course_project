class AdaptiveTestsController < ApplicationController
  def new
    @title = "new user"
  end
  
  def show
    @test = AdaptiveTest.find(params[:id])
  end
end
