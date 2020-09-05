class FboratingsController < ApplicationController
  before_action :set_fborating, only: [:show, :edit, :update, :destroy]

  # GET /fboratings
  # GET /fboratings.json
  def index
    @fboratings = Fborating.all
  end

  # GET /fboratings/1
  # GET /fboratings/1.json
  def show
  end

  # GET /fboratings/new
  def new
    @fborating = Fborating.new(:fbo_id => params[:fbo_id])
  end

  # GET /fboratings/1/edit
  def edit
  end

  # POST /fboratings
  # POST /fboratings.json
  def create
    @fborating = Fborating.new(fborating_params)

    respond_to do |format|
      if @fborating.save
        format.html { redirect_to @fborating, notice: 'Fborating was successfully created.' }
        format.json { render :show, status: :created, location: @fborating }
      else
        format.html { render :new }
        format.json { render json: @fborating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fboratings/1
  # PATCH/PUT /fboratings/1.json
  def update
    respond_to do |format|
      if @fborating.update(fborating_params)
        format.html { redirect_to @fborating, notice: 'Fborating was successfully updated.' }
        format.json { render :show, status: :ok, location: @fborating }
      else
        format.html { render :edit }
        format.json { render json: @fborating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fboratings/1
  # DELETE /fboratings/1.json
  def destroy
    @fborating.destroy
    respond_to do |format|
      format.html { redirect_to fboratings_url, notice: 'Fborating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fborating
      @fborating = Fborating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fborating_params
      params.require(:fborating).permit(:ratingType, :fboStarRating, :fboComments, :fbo_id)
    end
end
