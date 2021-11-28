class TablePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
     def create?
    true if @user.id == user.id
  end
   def new?
    create?
  end
  end
end
