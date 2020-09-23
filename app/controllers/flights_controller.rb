class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  # GET /flights
  # GET /flights.json
  def index
    @flights = Flight.all.order(:dateOfFlight).reverse
  end

  # GET /flights/1
  # GET /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
    @airfields = Airfield.all
    @pilots = User.pilots.all
    @aircrafts = Aircraft.all.order(:tailNumber)
  end

  # GET /flights/1/edit
  def edit
    @users = User.all
    @pilots = User.pilots.all
    @aircrafts = Aircraft.all
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params)
    @flights = Flight.all

    respond_to do |format|
      if @flight.save
        format.js
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    @flights = Flight.all
    respond_to do |format|
      if @flight.update(flight_params)
        format.js 
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:flightNumber, :departureAirfield, :arrivalAirfield, :client, :dateOfFlight, :revenue_test, :pic, :sic, :aircraft)
    end
end
