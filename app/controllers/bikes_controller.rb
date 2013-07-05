class BikesController < ApplicationController
  
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @comment = Comment.new
    @comment.bike_id = @bike.id
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(params[:bike].permit(:title, :body))
    @bike.save
    flash.notice = "Bike '#{@bike.title}' Created"
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    flash.notice = "Bike '#{@bike.title}' Deleted"
    redirect_to bikes_path
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update_attributes(params[:bike].permit(:title, :body))
    flash.notice = "Bike '#{@bike.title}' Updated"
    redirect_to bike_path(@bike)
  end

end
