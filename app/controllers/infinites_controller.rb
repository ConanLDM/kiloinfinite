class InfinitesController < ApplicationController

  def index
    @infinites = Infinite.all
  end

  def show
    @infinite = Infinite.find(params[:id])
  end

  def new
    @infinite = Infinite.new
  end

  def create
    @infinite = Infinite.new
  end

end
