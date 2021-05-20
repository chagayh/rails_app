class HomePageController < ApplicationController
  def index
  end

  def driversandcars
    @cars = Car.all
    @drivers = Driver.all
  end

  def show_car
    @car = Car.find(params[:car_id])
  end

  def show_driver
    @driver = Driver.find(params[:driver_id])
  end
end
