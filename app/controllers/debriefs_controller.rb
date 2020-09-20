class DebriefsController < ApplicationController
  before_action :set_debrief, only: [:show, :edit, :update, :destroy]

  # GET /debriefs
  # GET /debriefs.json
  def index
    @debriefs = Debrief.includes(:flight).order("flights.created_at").reverse
  end

  # GET /debriefs/1
  # GET /debriefs/1.json
  def show
    @debrief.comments.each do |comment|
      ViewedDebrief.create :user_id => current_user.id, :debrief_id => @debrief.id
    end    
    @debriefs = Debrief.includes(:flight).order("flights.created_at").reverse
  end

  # GET /debriefs/new
  def new

    @debrief = Debrief.new(:user_id => current_user.id, :flight_id => params[:flight_id])
    @flight = Flight.find(params[:flight_id])
    @flights = Flight.all
    @departuretypes = Departuretype.all
    @arrivaltypes = Arrivaltype.all
    @airborneflightdelays = Airborneflightdelay.all
    @airborneflightcheckins = Airborneflightcheckin.all
    @flightTurbulences = FlightTurbulence.all
  end

  # GET /debriefs/1/edit
  def edit
  end

  # POST /debriefs
  # POST /debriefs.json
  def create
    @debrief = Debrief.new(debrief_params)
    @debriefs = Debrief.all

    respond_to do |format|
      if @debrief.save
        format.js
        format.html { redirect_to @debrief, notice: 'Debrief was successfully created.' }
        format.json { render :show, status: :created, location: @debrief }
      else
        format.html { render :new }
        format.json { render json: @debrief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debriefs/1
  # PATCH/PUT /debriefs/1.json
  def update
    @debriefs = Debrief.all

    respond_to do |format|
      if @debrief.update(debrief_params)
        format.js
        format.html { redirect_to @debrief, notice: 'Debrief was successfully updated.' }
        format.json { render :show, status: :ok, location: @debrief }
      else
        format.html { render :edit }
        format.json { render json: @debrief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debriefs/1
  # DELETE /debriefs/1.json
  def destroy
    @debrief.destroy
    respond_to do |format|
      format.html { redirect_to debriefs_url, notice: 'Debrief was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debrief
      @debrief = Debrief.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debrief_params
      params.require(:debrief).permit(:flightNumber, :preparationRating, :preparationComments, :cateringStatus, :cateringRating, :cateringComments, :clientArrivalTiming, :clientArrivalType, :clientArrivalComments, :flightTurbulence, :airborneFlightDelays, :airborneFlightCheckins, :flightComments, :clientDepartureType, :clientDepartureComments, :overallComments, :user_id, :flight_id, :client_arrival_rating, :airborne_rating, :client_departure_rating, :maintenance_rating, :maintenance_check, :maintenance_comments)
    end
end
