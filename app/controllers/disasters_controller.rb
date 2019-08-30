class DisastersController < ApplicationController

  before_action :set_disaster, only:[:update,:show,:edit,:destroy]

  def index
    @disaster = Disaster.all
    @disaster = Disaster.page(params[:page]).per(10)
  end

  def new
    @disaster = Disaster.new
  end

  def create
    @disaster = Disaster.new(disaster_params)

    if @disaster.save
      flash[:success] = "Disaster save"
      redirect_to disasters_path(@disaster)
    else
      render :new
    end
  end

  def show
    #set_disaster
  end

  def edit
    #set_disaster
  end

  def update
    if @disaster.update(disaster_params)
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
end