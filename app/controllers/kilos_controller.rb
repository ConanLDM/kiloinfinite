class KilosController < ApplicationController
  def index
    @kilos = Kilo.all
  end

  def show
    @kilo = Kilo.find(params[:id])
  end

  def new
    @kilo = Kilo.new
  end

  def create
    @kilo = Kilo.new(kilo_params)

    if @kilo.save
      redirect_to @kilo
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def kilo_params
      params.require(:kilo).permit(:title, :body)
    end
end
