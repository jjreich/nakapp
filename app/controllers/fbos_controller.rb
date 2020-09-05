class FbosController < ApplicationController
  before_action :set_fbo, only: [:show, :edit, :update, :destroy]

  # GET /fbos
  # GET /fbos.json
  def index
    @fbos = Fbo.all
  end

  # GET /fbos/1
  # GET /fbos/1.json
  def show
  end

  # GET /fbos/new
  def new
    @fbo = Fbo.new
  end

  # GET /fbos/1/edit
  def edit
  end

  # POST /fbos
  # POST /fbos.json
  def create
    @fbo = Fbo.new(fbo_params)

    respond_to do |format|
      if @fbo.save
        format.html { redirect_to @fbo, notice: 'Fbo was successfully created.' }
        format.json { render :show, status: :created, location: @fbo }
      else
        format.html { render :new }
        format.json { render json: @fbo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbos/1
  # PATCH/PUT /fbos/1.json
  def update
    respond_to do |format|
      if @fbo.update(fbo_params)
        format.html { redirect_to @fbo, notice: 'Fbo was successfully updated.' }
        format.json { render :show, status: :ok, location: @fbo }
      else
        format.html { render :edit }
        format.json { render json: @fbo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbos/1
  # DELETE /fbos/1.json
  def destroy
    @fbo.destroy
    respond_to do |format|
      format.html { redirect_to fbos_url, notice: 'Fbo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbo
      @fbo = Fbo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fbo_params
      params.require(:fbo).permit(:fboName)
    end
end
