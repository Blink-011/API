class UsersTracksController < ApplicationController
  before_action :set_users_track, only: %i[ show update destroy ]

  # GET /users_tracks
  def index
    @users_tracks = UsersTrack.all

    render json: @users_tracks
  end

  # GET /users_tracks/1
  def show
    render json: @users_track
  end

  # POST /users_tracks
  def create
    @users_track = UsersTrack.new(users_track_params)

    if @users_track.save
      render json: @users_track, status: :created, location: @users_track
    else
      render json: @users_track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_tracks/1
  def update
    if @users_track.update(users_track_params)
      render json: @users_track
    else
      render json: @users_track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_tracks/1
  def destroy
    @users_track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_track
      @users_track = UsersTrack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_track_params
      params.fetch(:users_track, {})
    end
end
