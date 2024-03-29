# controller for the cars model
class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! #authenticate the user before any action in the controller
  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  # action to create a new car
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: I18n.t('controller.cars.create') }
        format.json { render :show, status: :created, location: @car }
      else
        @car.errors
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  #action  to update an existing car
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: I18n.t('controller.cars.update') }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  # action to delete an existing car
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: I18n.t('controller.cars.destroy') }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:model, :engine, :seats, :transmission, :ac, :priceDay, :priceWeek)
    end
end
