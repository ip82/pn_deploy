require 'test_helper'

class DeployControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deploy_index_url
    assert_response :success
  end

end
