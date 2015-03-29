class GradesController < ApplicationController

  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  
  def index
    @grades = GradePolicy::Scope.new(current_user, Grade).resolve
  end

  def show
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.create(grade_params)

    respond_to do |format|
      if @grade.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @grade.errors.full_messages, 
                             status: :unprocessable_entity }
      end
      
    end
  end

  def edit
  end

  def update
     respond_to do |format|
      if @grade.update(grade_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @grade.errors.full_messages,
                                   status: :unprocessable_entity }
      end
     
    end
  end

  def destroy
    @grade.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to grades_url }
      format.json { head :no_content }
    end
  end

  def teacher_grades
    @grades = Grade.joins(:subjects).where("subjects.user_id" => current_user.id)
    render 'index'
  end

  def user_grades
    @grades = Grade.where(user: current_user)
    render 'index'
  end

private
  
  def set_grade
    @grade = Grade.find(params[:id])
  end
  
  def grade_params
    params.require(:grade).permit(:value)
  end

end
