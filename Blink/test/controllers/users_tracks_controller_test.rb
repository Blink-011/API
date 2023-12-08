require "test_helper"

class UsersTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_track = users_tracks(:one)
  end

  test "should get index" do
    get users_tracks_url, as: :json
    assert_response :success
  end

  test "should create users_track" do
    assert_difference("UsersTrack.count") do
      post users_tracks_url, params: { users_track: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show users_track" do
    get users_track_url(@users_track), as: :json
    assert_response :success
  end

  test "should update users_track" do
    patch users_track_url(@users_track), params: { users_track: {  } }, as: :json
    assert_response :success
  end

  test "should destroy users_track" do
    assert_difference("UsersTrack.count", -1) do
      delete users_track_url(@users_track), as: :json
    end

    assert_response :no_content
  end
end
