class Admin::RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurants).permit(:name, :address, :phone_number, :category)
  end

end
