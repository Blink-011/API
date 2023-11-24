class TrackTypesController < ApplicationController
  before_action :set_track_type, only: %i[ show update destroy ]

  # GET /track_types
  def index
    @track_types = TrackType.all

    render json: @track_types
  end

  # GET /track_types/1
  def show
    render json: @track_type
  end

  # POST /track_types
  def create
    @track_type = TrackType.new(track_type_params)

    if @track_type.save
      render json: @track_type, status: :created, location: @track_type
    else
      render json: @track_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /track_types/1
  def update
    if @track_type.update(track_type_params)
      render json: @track_type
    else
      render json: @track_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /track_types/1
  def destroy
    @track_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_type
      @track_type = TrackType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_type_params
      params.fetch(:track_type, {})
    end
end
