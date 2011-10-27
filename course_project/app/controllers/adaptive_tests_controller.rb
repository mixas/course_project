class AdaptiveTestsController < ApplicationController
  def index
    @title = "All Tests"
    @adaptive_tests = AdaptiveTest.all
  end
end