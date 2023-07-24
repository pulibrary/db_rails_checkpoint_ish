class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(fruit_params)

    if @fruit.save
      redirect_to @fruit
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @fruit = Fruit.find(params[:id])
  end

  def update
    @fruit = Fruit.find(params[:id])

    if @fruit.update(fruit_params)
      redirect_to @fruit
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
    @fruit = Fruit.find(params[:id])
    @fruit.destroy
    redirect_to fruits_path
  end

  private
    def fruit_params
      params.require(:fruit).permit(:name, :calories, :about)
    end
end
