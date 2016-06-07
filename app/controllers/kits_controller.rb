class KitsController < ApplicationController
  before_action :set_kit, only: [:show, :update, :destroy]

  # GET /kits
  # GET /kits.json
  def index
    @kits = Kit.all
  end

  # GET /kits/1
  # GET /kits/1.json
  def show
  end

  # POST /kits
  # POST /kits.json
  def create
    @kit = Kit.new(kit_params)

    if @kit.save
      render :show
    else
      render json: @kit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kits/1
  # PATCH/PUT /kits/1.json
  def update
    if @kit.update(kit_params)
      render :show, status: :ok, location: @kit
    else
      render json: @kit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kits/1
  # DELETE /kits/1.json
  def destroy
    @kit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kit
      @kit = Kit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kit_params
      params.fetch(:kit, {})
    end
end
