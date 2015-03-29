class UserboardController < ApplicationController
  def index
    @division = Division.where(user: current_user)
    @teacher = User.where(user: current_user)
    @grades = Grade.where(user: current_user)
  end
end
