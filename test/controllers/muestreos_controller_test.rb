require 'test_helper'

class MuestreosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @muestreo = muestreos(:one)
  end

  test "should get index" do
    get muestreos_url
    assert_response :success
  end

  test "should get new" do
    get new_muestreo_url
    assert_response :success
  end

  test "should create muestreo" do
    assert_difference('Muestreo.count') do
      post muestreos_url, params: { muestreo: { fecha_fin: @muestreo.fecha_fin, fecha_inicio: @muestreo.fecha_inicio, meta: @muestreo.meta, proyecto_id: @muestreo.proyecto_id } }
    end

    assert_redirected_to muestreo_url(Muestreo.last)
  end

  test "should show muestreo" do
    get muestreo_url(@muestreo)
    assert_response :success
  end

  test "should get edit" do
    get edit_muestreo_url(@muestreo)
    assert_response :success
  end

  test "should update muestreo" do
    patch muestreo_url(@muestreo), params: { muestreo: { fecha_fin: @muestreo.fecha_fin, fecha_inicio: @muestreo.fecha_inicio, meta: @muestreo.meta, proyecto_id: @muestreo.proyecto_id } }
    assert_redirected_to muestreo_url(@muestreo)
  end

  test "should destroy muestreo" do
    assert_difference('Muestreo.count', -1) do
      delete muestreo_url(@muestreo)
    end

    assert_redirected_to muestreos_url
  end
end
