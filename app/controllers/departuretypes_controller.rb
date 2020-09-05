class DeparturetypesController < ApplicationController
  before_action :set_departuretype, only: [:show, :edit, :update, :destroy]

  # GET /departuretypes
  # GET /departuretypes.json
  def index
    @departuretypes = Departuretype.all
  end

  # GET /departuretypes/1
  # GET /departuretypes/1.json
  def show
  end

  # GET /departuretypes/new
  def new
    @departuretype = Departuretype.new
  end

  # GET /departuretypes/1/edit
  def edit
  end

  # POST /departuretypes
  # POST /departuretypes.json
  def create
    @departuretype = Departuretype.new(departuretype_params)

    respond_to do |format|
      if @departuretype.save
        format.html { redirect_to @departuretype, notice: 'Departuretype was successfully created.' }
        format.json { render :show, status: :created, location: @departuretype }
      else
        format.html { render :new }
        format.json { render json: @departuretype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departuretypes/1
  # PATCH/PUT /departuretypes/1.json
  def update
    respond_to do |format|
      if @departuretype.update(departuretype_params)
        format.html { redirect_to @departuretype, notice: 'Departuretype was successfully updated.' }
        format.json { render :show, status: :ok, location: @departuretype }
      else
        format.html { render :edit }
        format.json { render json: @departuretype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departuretypes/1
  # DELETE /departuretypes/1.json
  def destroy
    @departuretype.destroy
    respond_to do |format|
      format.html { redirect_to departuretypes_url, notice: 'Departuretype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departuretype
      @departuretype = Departuretype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departuretype_params
      params.require(:departuretype).permit(:departureTypes)
    end
end
