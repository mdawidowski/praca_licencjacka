require 'test_helper'

class AukcjesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aukcjes_index_url
    assert_response :success
  end

  test "should get pokaz" do
    get aukcjes_pokaz_url
    assert_response :success
  end

  test "should get nowa" do
    get aukcjes_nowa_url
    assert_response :success
  end

  test "should get edycja" do
    get aukcjes_edycja_url
    assert_response :success
  end

  test "should get usun" do
    get aukcjes_usun_url
    assert_response :success
  end

end
