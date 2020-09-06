class FlightTurbulencesController < ApplicationController
  before_action :set_flight_turbulence, only: [:show, :edit, :update, :destroy]

  # GET /flight_turbulences
  # GET /flight_turbulences.json
  def index
    @flight_turbulences = FlightTurbulence.all
  end

  # GET /flight_turbulences/1
  # GET /flight_turbulences/1.json
  def show
  end

  # GET /flight_turbulences/new
  def new
    @flight_turbulence = FlightTurbulence.new
  end

  # GET /flight_turbulences/1/edit
  def edit
  end

  # POST /flight_turbulences
  # POST /flight_turbulences.json
  def create
    @flight_turbulence = FlightTurbulence.new(flight_turbulence_params)

    respond_to do |format|
      if @flight_turbulence.save
        format.html { redirect_to @flight_turbulence, notice: 'Flight turbulence was successfully created.' }
        format.json { render :show, status: :created, location: @flight_turbulence }
      else
        format.html { render :new }
        format.json { render json: @flight_turbulence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_turbulences/1
  # PATCH/PUT /flight_turbulences/1.json
  def update
    respond_to do |format|
      if @flight_turbulence.update(flight_turbulence_params)
        format.html { redirect_to @flight_turbulence, notice: 'Flight turbulence was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_turbulence }
      else
        format.html { render :edit }
        format.json { render json: @flight_turbulence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_turbulences/1
  # DELETE /flight_turbulences/1.json
  def destroy
    @flight_turbulence.destroy
    respond_to do |format|
      format.html { redirect_to flight_turbulences_url, notice: 'Flight turbulence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_turbulence
      @flight_turbulence = FlightTurbulence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_turbulence_params
      params.require(:flight_turbulence).permit(:turbulenceType)
    end
end
