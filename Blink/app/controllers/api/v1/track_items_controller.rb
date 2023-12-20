class api::v1::TrackItemsController < ApplicationController
  before_action :set_track_item, only: %i[ show update destroy ]

  # GET /track_items
  def index
    @track_items = TrackItem.all

    render json: @track_items
  end

  # GET /track_items/1
  def show
    render json: @track_item
  end

  # POST /track_items
  def create
    @track_item = TrackItem.new(track_item_params)

    if @track_item.save
      render json: @track_item, status: :created, location: @track_item
    else
      render json: @track_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /track_items/1
  def update
    if @track_item.update(track_item_params)
      render json: @track_item
    else
      render json: @track_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /track_items/1
  def destroy
    @track_item.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_item
      @track_item = TrackItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_item_params
      params.fetch(:track_item, {})
    end
end
