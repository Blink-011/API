require "test_helper"

class DailyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_datum = daily_data(:one)
  end

  test "should get index" do
    get daily_data_url, as: :json
    assert_response :success
  end

  test "should create daily_datum" do
    assert_difference("DailyDatum.count") do
      post daily_data_url, params: { daily_datum: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show daily_datum" do
    get daily_datum_url(@daily_datum), as: :json
    assert_response :success
  end

  test "should update daily_datum" do
    patch daily_datum_url(@daily_datum), params: { daily_datum: {  } }, as: :json
    assert_response :success
  end

  test "should destroy daily_datum" do
    assert_difference("DailyDatum.count", -1) do
      delete daily_datum_url(@daily_datum), as: :json
    end

    assert_response :no_content
  end
end
