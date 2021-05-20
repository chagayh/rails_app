class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    
    @car = Car.new(car_params)
    
    if @car.save
      ActionCable.server.broadcast(
        "list_update_channel",
        {
          id: @car.id,
          title: @car.title
        }
      )
      redirect_to @car

    else
      render :new
    end
  end

  private
    def car_params
      params.require(:car).permit(:car_id, :title, :car_type, :color, :image, driver_ids:[])
    end
end
