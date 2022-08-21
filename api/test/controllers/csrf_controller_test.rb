require "test_helper"

class CsrfControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get csrf_create_url
    assert_response :success
  end
end
