class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, Product
    end
  end
end
