require 'test_helper'

class CitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citations_index_url
    assert_response :success
  end

end
