require 'test_helper'

class VehicleCommentTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_comment_template = vehicle_comment_templates(:one)
  end

  test "should get index" do
    get vehicle_comment_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_comment_template_url
    assert_response :success
  end

  test "should create vehicle_comment_template" do
    assert_difference('VehicleCommentTemplate.count') do
      post vehicle_comment_templates_url, params: { vehicle_comment_template: { comment: @vehicle_comment_template.comment, score: @vehicle_comment_template.score } }
    end

    assert_redirected_to vehicle_comment_template_url(VehicleCommentTemplate.last)
  end

  test "should show vehicle_comment_template" do
    get vehicle_comment_template_url(@vehicle_comment_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_comment_template_url(@vehicle_comment_template)
    assert_response :success
  end

  test "should update vehicle_comment_template" do
    patch vehicle_comment_template_url(@vehicle_comment_template), params: { vehicle_comment_template: { comment: @vehicle_comment_template.comment, score: @vehicle_comment_template.score } }
    assert_redirected_to vehicle_comment_template_url(@vehicle_comment_template)
  end

  test "should destroy vehicle_comment_template" do
    assert_difference('VehicleCommentTemplate.count', -1) do
      delete vehicle_comment_template_url(@vehicle_comment_template)
    end

    assert_redirected_to vehicle_comment_templates_url
  end
end
