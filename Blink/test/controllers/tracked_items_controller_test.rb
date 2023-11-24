require "test_helper"

class TrackedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracked_item = tracked_items(:one)
  end

  test "should get index" do
    get tracked_items_url, as: :json
    assert_response :success
  end

  test "should create tracked_item" do
    assert_difference("TrackedItem.count") do
      post tracked_items_url, params: { tracked_item: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show tracked_item" do
    get tracked_item_url(@tracked_item), as: :json
    assert_response :success
  end

  test "should update tracked_item" do
    patch tracked_item_url(@tracked_item), params: { tracked_item: {  } }, as: :json
    assert_response :success
  end

  test "should destroy tracked_item" do
    assert_difference("TrackedItem.count", -1) do
      delete tracked_item_url(@tracked_item), as: :json
    end

    assert_response :no_content
  end
end
