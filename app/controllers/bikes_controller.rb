class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new
    @bike.title = params[:title]
    @bike.body = params[:body]
    @bike.save
    redirect_to bike_path(@bike)
  end

end
