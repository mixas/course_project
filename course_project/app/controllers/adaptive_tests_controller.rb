class AdaptiveTestsController < InheritedResources::Base
  before_filter :can
  
  private
    
    def can
      if current_user != nil
        if current_user.role != 'admin'
          deny_access
        end
      else
        deny_access
      end
    end
    
end