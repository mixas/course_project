class AdaptiveTestsController < ApplicationController
  def index
    @adaptive_tests = AdaptiveTest.all
  end
end