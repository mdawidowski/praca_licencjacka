require 'test_helper'

class ObserwowaneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get obserwowane_index_url
    assert_response :success
  end

end
