class KilosController < ApplicationController
  # Will specify CRUD actions later, for now adding to this line below will affect Turbo
  skip_before_action :authenticate_user!

  def index
    @kilos = Kilo.all
    @kilo = Kilo.new
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
      respond_to do |format|
        format.html { redirect_to @kilo }
        format.turbo_stream { redirect_to @kilo, status: :see_other }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @kilo.destroy
  end

  private

  def kilo_params
    params.require(:kilo).permit(:title, :body, :weight)
  end
end
