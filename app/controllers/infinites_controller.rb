class InfinitesController < ApplicationController

  def index
    @infinites = Infinite.all
    @infinite = Infinite.new
    @infinites = Infinite.page(params[:page]).per(10)
  end

  def show
    @infinite = Infinite.find(params[:id])
  end

  def new
    @infinite = Infinite.new
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def create
    @infinite = Infinite.new(infinite_params)

    respond_to do |format|
      if @infinite.save
        format.html { redirect_to @infinite, notice: "Infinite was successfully created." }
        format.turbo_stream { render turbo_stream: turbo_stream.prepend(:infinites, partial: 'infinite', locals: { infinite: @infinite }) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@infinite, partial: 'form', locals: { infinite: @infinite }) }
      end
    end
  end


  private

  def infinite_params
    params.require(:infinite).permit(:name, :count, :price, :description, :image)
  end
end
