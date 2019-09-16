require 'test_helper'

class Admin::AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_post_abouts_index_url
    assert_response :success
  end

end
