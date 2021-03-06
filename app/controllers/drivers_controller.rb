class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)

    if @driver.save

      ActionCable.server.broadcast(
        "list_update_channel",
        {
          id: @driver.id,
          title: @driver.name
        }
      )

      redirect_to @driver
    else
      render :new
    end
  end

  private
    def driver_params
      params.require(:driver).permit(:name, :email, :image, car_ids:[])
    end
  end
