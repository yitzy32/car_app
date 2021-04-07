class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def show
    @car = Car.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @car = Car.new(
      color: params[:color],
      year: params[:year],
    )
    @car.save
    render "show.json.jb"
  end
end
