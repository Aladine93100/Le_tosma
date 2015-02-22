class MatosController < ApplicationController
  before_action :set_mato, only: [:show, :edit, :update, :destroy]

  # GET /matos
  # GET /matos.json
  def index
    @matos = Mato.all
  end

  # GET /matos/1
  # GET /matos/1.json
  def show
  end

  # GET /matos/new
  def new
    @mato = Mato.new
  end

  # GET /matos/1/edit
  def edit
  end

  # POST /matos
  # POST /matos.json
  def create
    @mato = Mato.new(mato_params)

    respond_to do |format|
      if @mato.save
        format.html { redirect_to @mato, notice: 'Mato was successfully created.' }
        format.json { render :show, status: :created, location: @mato }
      else
        format.html { render :new }
        format.json { render json: @mato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matos/1
  # PATCH/PUT /matos/1.json
  def update
    respond_to do |format|
      if @mato.update(mato_params)
        format.html { redirect_to @mato, notice: 'Mato was successfully updated.' }
        format.json { render :show, status: :ok, location: @mato }
      else
        format.html { render :edit }
        format.json { render json: @mato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matos/1
  # DELETE /matos/1.json
  def destroy
    @mato.destroy
    respond_to do |format|
      format.html { redirect_to matos_url, notice: 'Mato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mato
      @mato = Mato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mato_params
      params.require(:mato).permit(:name, :description, :price, :availability)
    end
end
