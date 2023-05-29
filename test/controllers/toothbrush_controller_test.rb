require "test_helper"

class ToothbrushControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toothbrush_index_url
    assert_response :success
  end

  test "should get show" do
    get toothbrush_show_url
    assert_response :success
  end

  test "should get new" do
    get toothbrush_new_url
    assert_response :success
  end

  test "should get edit" do
    get toothbrush_edit_url
    assert_response :success
  end

  test "should get update" do
    get toothbrush_update_url
    assert_response :success
  end

  test "should get destroy" do
    get toothbrush_destroy_url
    assert_response :success
  end

  test "should get create" do
    get toothbrush_create_url
    assert_response :success
  end
end
