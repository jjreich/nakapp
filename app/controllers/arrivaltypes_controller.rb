class ArrivaltypesController < ApplicationController
  before_action :set_arrivaltype, only: [:show, :edit, :update, :destroy]

  # GET /arrivaltypes
  # GET /arrivaltypes.json
  def index
    @arrivaltypes = Arrivaltype.all
  end

  # GET /arrivaltypes/1
  # GET /arrivaltypes/1.json
  def show
  end

  # GET /arrivaltypes/new
  def new
    @arrivaltype = Arrivaltype.new
  end

  # GET /arrivaltypes/1/edit
  def edit
  end

  # POST /arrivaltypes
  # POST /arrivaltypes.json
  def create
    @arrivaltype = Arrivaltype.new(arrivaltype_params)

    respond_to do |format|
      if @arrivaltype.save
        format.html { redirect_to @arrivaltype, notice: 'Arrivaltype was successfully created.' }
        format.json { render :show, status: :created, location: @arrivaltype }
      else
        format.html { render :new }
        format.json { render json: @arrivaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrivaltypes/1
  # PATCH/PUT /arrivaltypes/1.json
  def update
    respond_to do |format|
      if @arrivaltype.update(arrivaltype_params)
        format.html { redirect_to @arrivaltype, notice: 'Arrivaltype was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrivaltype }
      else
        format.html { render :edit }
        format.json { render json: @arrivaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrivaltypes/1
  # DELETE /arrivaltypes/1.json
  def destroy
    @arrivaltype.destroy
    respond_to do |format|
      format.html { redirect_to arrivaltypes_url, notice: 'Arrivaltype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrivaltype
      @arrivaltype = Arrivaltype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arrivaltype_params
      params.require(:arrivaltype).permit(:arrivalTypes)
    end
end
