class DisastersController < ApplicationController

  before_action :set_disaster, only: [:update,:show,:edit,:destroy]
  before_action :check_user, only: [:edit,:update,:destroy]

  helper_method :author?


  def index
    @disaster = Disaster.includes(:comments).page(params[:page]).per(10)
    @disaster = @disaster.where(user_id: params[:user_id]) if params[:user_id]
  end

  def new
    @disaster = Disaster.new
  end

  def create
    @disaster = Disaster.new(disaster_params)
    @disaster.user_id = current_user.id
    if @disaster.save
      flash[:success] = "Disaster save!"
      redirect_to disasters_path(@disaster)
    else
      render :new
    end
  end

  def show
    @comments = Comment.new
  end

  def edit
  end

  def update
    if current_user.disasters.update(disaster_params)
      flash[:sucess] = "Disaster updated"
      redirect_to disasters_path(@disaster)
    else
      render :edit
    end
  end

  def destroy
    @disaster.destroy
    flash[:danger] = "Disaster deleted"
    redirect_to disasters_path
  end

  private
  def set_disaster
    @disaster = Disaster.find(params[:id])
  end

  def disaster_params
    params.require(:disaster).permit(:title, :description,:category_id)
  end

  def check_user
    @disaster = Disaster.find(params[:id])
    unless current_user.id == @disaster.id
      flash['danger'] = "You can edit your own information"
      redirect_to disasters_path
     end
  end

  def author?
    @disaster = Disaster.find(params[:id])
    @disaster.user_id == current_user.id
  end
end