require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get posts_destroy_url
    assert_response :success
  end
end
