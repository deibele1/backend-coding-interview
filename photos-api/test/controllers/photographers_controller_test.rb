require "test_helper"

class PhotographersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photographer = photographers(:one)
  end

  test "should get index" do
    get photographers_url, as: :json
    assert_response :success
  end

  test "should create photographer" do
    assert_difference("Photographer.count") do
      post photographers_url, params: { photographer: { photographer: @photographer.photographer, photographer_id: @photographer.photographer_id, photographer_url: @photographer.photographer_url } }, as: :json
    end

    assert_response :created
  end

  test "should show photographer" do
    get photographer_url(@photographer), as: :json
    assert_response :success
  end

  test "should update photographer" do
    patch photographer_url(@photographer), params: { photographer: { photographer: @photographer.photographer, photographer_id: @photographer.photographer_id, photographer_url: @photographer.photographer_url } }, as: :json
    assert_response :success
  end

  test "should destroy photographer" do
    assert_difference("Photographer.count", -1) do
      delete photographer_url(@photographer), as: :json
    end

    assert_response :no_content
  end
end
