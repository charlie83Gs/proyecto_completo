require 'test_helper'

class AdministrarControllerTest < ActionDispatch::IntegrationTest
  test "should get permisos" do
    get administrar_permisos_url
    assert_response :success
  end

end
