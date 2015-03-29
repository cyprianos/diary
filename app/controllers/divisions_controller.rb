class DivisionsController < ApplicationController

  before_action :set_division, only: [:show, :edit, :update, :destroy]
  
  def index
    @divisions = Division.all
  end

  def show
  end

  def new
    @division = Division.new
  end

  def create
    @division = Division.create(division_params)

    respond_to do |format|
      if @division.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @division.errors.full_messages, 
                             status: :unprocessable_entity }
      end
      
    end
  end

  def edit
  end

  def update
     respond_to do |format|
      if @division.update(division_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @division.errors.full_messages,
                                   status: :unprocessable_entity }
      end
     
    end
  end

  def destroy
    @division.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to divisions_url }
      format.json { head :no_content }
    end
  end

private
  
  def set_division
    @division = Division.find(params[:id])
  end
  
  def division_params
    params.require(:division).permit(:name)
  end

end
