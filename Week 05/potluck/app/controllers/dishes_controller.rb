class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    Dish.create(dish_params)
    redirect_to dishes_path
  end

  private
  def dish_params
   params.require(:dish).permit(:name, :type_of_dish, :main_ingredient, :serving_size)
 end
end
