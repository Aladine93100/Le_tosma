class MaterielsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_materiel, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /materiels
  # GET /materiels.json
  def index
    @materiels = Materiel.all
    respond_with(@materiels)
  end

  # GET /materiels/1
  # GET /materiels/1.json
  def show
    respond_with(@materiel)

  end

  # GET /materiels/new
  def new
    @materiel = Materiel.new
    respond_with(@materiel)
  end

  # GET /materiels/1/edit
  def edit
  end

  # POST /materiels
  # POST /materiels.json
  def create
    @materiel = Materiel.new(materiel_params)
    @materiel.save
    respond_with(@materiel)
  end

  # PATCH/PUT /materiels/1
  # PATCH/PUT /materiels/1.json
  def update
    @materiel.update(materiel_params)
    respond_with(@materiel)
  end

  # DELETE /materiels/1
  # DELETE /materiels/1.json
  def destroy
    @materiel.destroy
    respond_with(@materiel)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materiel
      @materiel = Materiel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materiel_params
      params.require(:materiel).permit(:name, :description, :price, :availability, :image, :resource)
    end
end
