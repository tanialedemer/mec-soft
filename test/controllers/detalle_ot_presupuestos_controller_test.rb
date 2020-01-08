require 'test_helper'

class DetalleOtPresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_ot_presupuesto = detalle_ot_presupuestos(:one)
  end

  test "should get index" do
    get detalle_ot_presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_ot_presupuesto_url
    assert_response :success
  end

  test "should create detalle_ot_presupuesto" do
    assert_difference('DetalleOtPresupuesto.count') do
      post detalle_ot_presupuestos_url, params: { detalle_ot_presupuesto: { cantidad: @detalle_ot_presupuesto.cantidad, orden_trabajo_presupuesto_id: @detalle_ot_presupuesto.orden_trabajo_presupuesto_id, precio_venta: @detalle_ot_presupuesto.precio_venta, repuesto_servicio_id: @detalle_ot_presupuesto.repuesto_servicio_id, subtotal: @detalle_ot_presupuesto.subtotal } }
    end

    assert_redirected_to detalle_ot_presupuesto_url(DetalleOtPresupuesto.last)
  end

  test "should show detalle_ot_presupuesto" do
    get detalle_ot_presupuesto_url(@detalle_ot_presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_ot_presupuesto_url(@detalle_ot_presupuesto)
    assert_response :success
  end

  test "should update detalle_ot_presupuesto" do
    patch detalle_ot_presupuesto_url(@detalle_ot_presupuesto), params: { detalle_ot_presupuesto: { cantidad: @detalle_ot_presupuesto.cantidad, orden_trabajo_presupuesto_id: @detalle_ot_presupuesto.orden_trabajo_presupuesto_id, precio_venta: @detalle_ot_presupuesto.precio_venta, repuesto_servicio_id: @detalle_ot_presupuesto.repuesto_servicio_id, subtotal: @detalle_ot_presupuesto.subtotal } }
    assert_redirected_to detalle_ot_presupuesto_url(@detalle_ot_presupuesto)
  end

  test "should destroy detalle_ot_presupuesto" do
    assert_difference('DetalleOtPresupuesto.count', -1) do
      delete detalle_ot_presupuesto_url(@detalle_ot_presupuesto)
    end

    assert_redirected_to detalle_ot_presupuestos_url
  end
end
