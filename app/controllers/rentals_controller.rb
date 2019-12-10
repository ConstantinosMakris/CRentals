class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /rentals
  # GET /rentals.json
  def index
    if current_user.admin?
      @rentals = Rental.all
    else
      @rentals = Rental.user_rental(current_user)
    end
  end

  # GET /rentals/1
  # GET /rentals/1.json
  def show
  end

  # GET /rentals/new
  def new
    @cars = Car.first
    @rental = Rental.new
  end

  # GET /rentals/1/edit
  def edit

  end

  # POST /rentals
  # POST /rentals.json
  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user

    respond_to do |format|
      if @rental.save
        format.html { redirect_to @rental, notice: <%= I18n.t('controller.rentals.create') %> }
        format.json { render :show, status: :created, location: @rental }
      else
        format.html { render :new }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentals/1
  # PATCH/PUT /rentals/1.json
  def update
    respond_to do |format|
      if @rental.update(rental_params)
        format.html { redirect_to @rental, notice: <%= I18n.t('controller.rentals.update') %> }
        format.json { render :show, status: :ok, location: @rental }
      else
        format.html { render :edit }
        format.json { render json: @rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentals/1
  # DELETE /rentals/1.json
  def destroy
    @rental.destroy
    respond_to do |format|
      format.html { redirect_to rentals_url, notice: <%= I18n.t('controller.rentals.update') %> }
      format.json { head :no_content }
    end
  end

  def post
    user = User.params[:username]
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental
      @rental = Rental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_params
      params.require(:rental).permit(:user_id, :car_id, :start, :end, :address, :comments)
    end
end
