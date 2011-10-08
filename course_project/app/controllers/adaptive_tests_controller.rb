class AdaptiveTestsController < InheritedResources::Base#ApplicationController #
respond_to :html, :xml  
 
  def create
    create! {adaptive_test_path}
  end
end
