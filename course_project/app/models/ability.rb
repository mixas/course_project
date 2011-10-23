# To change this template, choose Tools | Templates
# and open the template in the editor.

class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all
  end
end
