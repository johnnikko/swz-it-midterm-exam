class UsersController < ApplicationController
  def index
    @users = User.includes(:disasters).page(params[:page]).per(10)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash['success'] = "Succesfully deleted!"
      redirect_to users_path
    else
      render :index
    end
  end
end
