class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.create(strong_params)
  end

  def new
    restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update(strong_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to restaurants_path(@restaurant)
  end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
