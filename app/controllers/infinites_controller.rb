class InfinitesController < ApplicationController

  def index
    @infinites = Infinite.all
    @infinite = Infinite.new
  end

  def show
    @infinite = Infinite.find(params[:id])
  end

  def new
    @infinite = Infinite.new
  end

  def create
    @infinite = Infinite.new(infinite_params)
  end


  private

  def infinite_params
    params.require(:infinite).permit(:name, :count, :price)
  end
end
