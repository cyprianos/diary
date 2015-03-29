class GradePolicy < ApplicationPolicy
  def create?
    user.role.teacher?
  end

  class Scope < Scope
    def resolve
      if user.role.teacher?
        scope.all
      else
        scope.where(:company_id => user.companies)
      end
    end
  end

end

