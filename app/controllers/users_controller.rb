class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    respond_to do |format|
      if @user.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @user.errors.full_messages, 
                             status: :unprocessable_entity }
      end
      
    end
  end

  def edit
  end

  def update
     respond_to do |format|
      if @user.update(user_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @user.errors.full_messages,
                                   status: :unprocessable_entity }
      end
     
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    if params[:role_id]
      params[:user][:role_id]=params[:role_id]
    end
    if params[:division_id]
      params[:user][:division_id]=params[:division_id]
    end
    params.require(:user).permit(:email, :role_id, :division_id)
  end

end
