require "test_helper"

class SrcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @src = srcs(:one)
  end

  test "should get index" do
    get srcs_url, as: :json
    assert_response :success
  end

  test "should create src" do
    assert_difference("Src.count") do
      post srcs_url, params: { src: { image_id: @src.image_id, landscape: @src.landscape, large: @src.large, large2x: @src.large2x, medium: @src.medium, original: @src.original, portrait: @src.portrait, small: @src.small, tiny: @src.tiny } }, as: :json
    end

    assert_response :created
  end

  test "should show src" do
    get src_url(@src), as: :json
    assert_response :success
  end

  test "should update src" do
    patch src_url(@src), params: { src: { image_id: @src.image_id, landscape: @src.landscape, large: @src.large, large2x: @src.large2x, medium: @src.medium, original: @src.original, portrait: @src.portrait, small: @src.small, tiny: @src.tiny } }, as: :json
    assert_response :success
  end

  test "should destroy src" do
    assert_difference("Src.count", -1) do
      delete src_url(@src), as: :json
    end

    assert_response :no_content
  end
end
