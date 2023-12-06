require "test_helper"

class TrackItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_item = track_items(:one)
  end

  test "should get index" do
    get track_items_url, as: :json
    assert_response :success
  end

  test "should create track_item" do
    assert_difference("TrackItem.count") do
      post track_items_url, params: { track_item: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show track_item" do
    get track_item_url(@track_item), as: :json
    assert_response :success
  end

  test "should update track_item" do
    patch track_item_url(@track_item), params: { track_item: {  } }, as: :json
    assert_response :success
  end

  test "should destroy track_item" do
    assert_difference("TrackItem.count", -1) do
      delete track_item_url(@track_item), as: :json
    end

    assert_response :no_content
  end
end
