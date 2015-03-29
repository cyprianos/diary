class GradePolicy < ApplicationPolicy
  def create?
    user.role.teacher?
  end
end

