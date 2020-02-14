require 'test_helper'

class VehicleCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_comment = vehicle_comments(:one)
  end

  test "should get index" do
    get vehicle_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_comment_url
    assert_response :success
  end

  test "should create vehicle_comment" do
    assert_difference('VehicleComment.count') do
      post vehicle_comments_url, params: { vehicle_comment: {  } }
    end

    assert_redirected_to vehicle_comment_url(VehicleComment.last)
  end

  test "should show vehicle_comment" do
    get vehicle_comment_url(@vehicle_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_comment_url(@vehicle_comment)
    assert_response :success
  end

  test "should update vehicle_comment" do
    patch vehicle_comment_url(@vehicle_comment), params: { vehicle_comment: {  } }
    assert_redirected_to vehicle_comment_url(@vehicle_comment)
  end

  test "should destroy vehicle_comment" do
    assert_difference('VehicleComment.count', -1) do
      delete vehicle_comment_url(@vehicle_comment)
    end

    assert_redirected_to vehicle_comments_url
  end
end
