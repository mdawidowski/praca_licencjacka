require 'test_helper'

class MojeaukcjeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mojeaukcje_index_url
    assert_response :success
  end

end
