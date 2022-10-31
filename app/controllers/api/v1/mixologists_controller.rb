class Api::V1::MixologistsController < ApplicationController
  before_action :set_mixologist, only: [:show, :update, :destroy]

  # GET /mixologists
  def index
    @mixologists = Mixologist.all

    render json: @mixologists
  end

  # GET /mixologists/1
  def show
    render json: @mixologist
  end

  # POST /mixologists
  def create
    @mixologist = Mixologist.new(mixologist_params)

    if @mixologist.save
      render json: @mixologist, status: :created, location: @mixologist
    else
      render json: @mixologist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mixologists/1
  def update
    if @mixologist.update(mixologist_params)
      render json: @mixologist
    else
      render json: @mixologist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mixologists/1
  def destroy
    @mixologist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mixologist
      @mixologist = Mixologist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mixologist_params
      params.require(:mixologist).permit(:name, :image)
    end
end
