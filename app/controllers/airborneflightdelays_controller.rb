class AirborneflightdelaysController < ApplicationController
  before_action :set_airborneflightdelay, only: [:show, :edit, :update, :destroy]

  # GET /airborneflightdelays
  # GET /airborneflightdelays.json
  def index
    @airborneflightdelays = Airborneflightdelay.all
  end

  # GET /airborneflightdelays/1
  # GET /airborneflightdelays/1.json
  def show
  end

  # GET /airborneflightdelays/new
  def new
    @airborneflightdelay = Airborneflightdelay.new
  end

  # GET /airborneflightdelays/1/edit
  def edit
  end

  # POST /airborneflightdelays
  # POST /airborneflightdelays.json
  def create
    @airborneflightdelay = Airborneflightdelay.new(airborneflightdelay_params)

    respond_to do |format|
      if @airborneflightdelay.save
        format.html { redirect_to @airborneflightdelay, notice: 'Airborneflightdelay was successfully created.' }
        format.json { render :show, status: :created, location: @airborneflightdelay }
      else
        format.html { render :new }
        format.json { render json: @airborneflightdelay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airborneflightdelays/1
  # PATCH/PUT /airborneflightdelays/1.json
  def update
    respond_to do |format|
      if @airborneflightdelay.update(airborneflightdelay_params)
        format.html { redirect_to @airborneflightdelay, notice: 'Airborneflightdelay was successfully updated.' }
        format.json { render :show, status: :ok, location: @airborneflightdelay }
      else
        format.html { render :edit }
        format.json { render json: @airborneflightdelay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airborneflightdelays/1
  # DELETE /airborneflightdelays/1.json
  def destroy
    @airborneflightdelay.destroy
    respond_to do |format|
      format.html { redirect_to airborneflightdelays_url, notice: 'Airborneflightdelay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airborneflightdelay
      @airborneflightdelay = Airborneflightdelay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def airborneflightdelay_params
      params.require(:airborneflightdelay).permit(:airborneFlightDelays)
    end
end
