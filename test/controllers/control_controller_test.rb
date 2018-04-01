require 'test_helper'

class ControlControllerTest < ActionDispatch::IntegrationTest
  test "should get permisos" do
    get control_permisos_url
    assert_response :success
  end

end
