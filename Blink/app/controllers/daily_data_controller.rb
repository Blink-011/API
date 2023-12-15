class DailyDataController < ApplicationController
  before_action :set_daily_datum, only: %i[ show update destroy ]

  # GET /daily_data
  def index
    @daily_data = DailyDatum.all

    render json: @daily_data
  end

  # GET /daily_data/1
  def show
    render json: @daily_datum
  end

  # POST /daily_data
  def create
    @daily_datum = DailyDatum.new(daily_datum_params)

    if @daily_datum.save
      render json: @daily_datum, status: :created, location: @daily_datum
    else
      render json: @daily_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /daily_data/1
  def update
    if @daily_datum.update(daily_datum_params)
      render json: @daily_datum
    else
      render json: @daily_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /daily_data/1
  def destroy
    @daily_datum.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_datum
      @daily_datum = DailyDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_datum_params
      params.fetch(:daily_datum, {})
    end
end
