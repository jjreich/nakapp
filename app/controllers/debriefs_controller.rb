class DebriefsController < ApplicationController
  before_action :set_debrief, only: [:show, :edit, :update, :destroy]

  # GET /debriefs
  # GET /debriefs.json
  def index
    @debriefs = Debrief.all
  end

  # GET /debriefs/1
  # GET /debriefs/1.json
  def show
  end

  # GET /debriefs/new
  def new
    @debrief = Debrief.new
    @departuretypes = Departuretype.all
    @arrivaltypes = Arrivaltype.all
  end

  # GET /debriefs/1/edit
  def edit
  end

  # POST /debriefs
  # POST /debriefs.json
  def create
    @debrief = Debrief.new(debrief_params)

    respond_to do |format|
      if @debrief.save
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
    respond_to do |format|
      if @debrief.update(debrief_params)
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
      params.require(:debrief).permit(:flightNumber, :preparationRating, :preparationComments, :cateringStatus, :cateringRating, :cateringComments, :clientArrivalTiming, :clientArrivalType, :clientArrivalComments, :flightTurbulence, :airborneFlightDelays, :airborneFlightCheckins, :flightComments, :clientDepartureType, :clientDepartureComments, :overallComments)
    end
end
