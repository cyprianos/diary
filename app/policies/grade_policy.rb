class GradePolicy < ApplicationPolicy
  def create?
    user.role.teacher?
  end

  class Scope < Scope
    def resolve
      scope.all
      # if user.role.teacher?
      #   # Grade.joins(:subjects).where('subjects.teacher_id'=>1)
      #   scope.joins(:subjects).where('subjects.teacher_id'=>user.id)
      # else
      #   scope.where(:user_id => user.id)
      # end
    end
  end

end

