require "test_helper"

class TrackTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_type = track_types(:one)
  end

  test "should get index" do
    get track_types_url, as: :json
    assert_response :success
  end

  test "should create track_type" do
    assert_difference("TrackType.count") do
      post track_types_url, params: { track_type: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show track_type" do
    get track_type_url(@track_type), as: :json
    assert_response :success
  end

  test "should update track_type" do
    patch track_type_url(@track_type), params: { track_type: {  } }, as: :json
    assert_response :success
  end

  test "should destroy track_type" do
    assert_difference("TrackType.count", -1) do
      delete track_type_url(@track_type), as: :json
    end

    assert_response :no_content
  end
end
