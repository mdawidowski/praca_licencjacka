require 'test_helper'

class KategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kategories_index_url
    assert_response :success
  end

  test "should get new" do
    get kategories_new_url
    assert_response :success
  end

  test "should get edit" do
    get kategories_edit_url
    assert_response :success
  end

  test "should get show" do
    get kategories_show_url
    assert_response :success
  end

end
