class AirborneflightcheckinsController < ApplicationController
  before_action :set_airborneflightcheckin, only: [:show, :edit, :update, :destroy]

  # GET /airborneflightcheckins
  # GET /airborneflightcheckins.json
  def index
    @airborneflightcheckins = Airborneflightcheckin.all
  end

  # GET /airborneflightcheckins/1
  # GET /airborneflightcheckins/1.json
  def show
  end

  # GET /airborneflightcheckins/new
  def new
    @airborneflightcheckin = Airborneflightcheckin.new
  end

  # GET /airborneflightcheckins/1/edit
  def edit
  end

  # POST /airborneflightcheckins
  # POST /airborneflightcheckins.json
  def create
    @airborneflightcheckin = Airborneflightcheckin.new(airborneflightcheckin_params)

    respond_to do |format|
      if @airborneflightcheckin.save
        format.html { redirect_to @airborneflightcheckin, notice: 'Airborneflightcheckin was successfully created.' }
        format.json { render :show, status: :created, location: @airborneflightcheckin }
      else
        format.html { render :new }
        format.json { render json: @airborneflightcheckin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airborneflightcheckins/1
  # PATCH/PUT /airborneflightcheckins/1.json
  def update
    respond_to do |format|
      if @airborneflightcheckin.update(airborneflightcheckin_params)
        format.html { redirect_to @airborneflightcheckin, notice: 'Airborneflightcheckin was successfully updated.' }
        format.json { render :show, status: :ok, location: @airborneflightcheckin }
      else
        format.html { render :edit }
        format.json { render json: @airborneflightcheckin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airborneflightcheckins/1
  # DELETE /airborneflightcheckins/1.json
  def destroy
    @airborneflightcheckin.destroy
    respond_to do |format|
      format.html { redirect_to airborneflightcheckins_url, notice: 'Airborneflightcheckin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airborneflightcheckin
      @airborneflightcheckin = Airborneflightcheckin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def airborneflightcheckin_params
      params.require(:airborneflightcheckin).permit(:airborneflightcheckins)
    end
end
