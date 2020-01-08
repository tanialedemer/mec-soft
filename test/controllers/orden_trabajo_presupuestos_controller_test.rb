require 'test_helper'

class OrdenTrabajoPresupuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_trabajo_presupuesto = orden_trabajo_presupuestos(:one)
  end

  test "should get index" do
    get orden_trabajo_presupuestos_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_trabajo_presupuesto_url
    assert_response :success
  end

  test "should create orden_trabajo_presupuesto" do
    assert_difference('OrdenTrabajoPresupuesto.count') do
      post orden_trabajo_presupuestos_url, params: { orden_trabajo_presupuesto: { cliente_id: @orden_trabajo_presupuesto.cliente_id, descripción: @orden_trabajo_presupuesto.descripción, estado_id: @orden_trabajo_presupuesto.estado_id, fecha: @orden_trabajo_presupuesto.fecha, mecanico_id: @orden_trabajo_presupuesto.mecanico_id, num_orden: @orden_trabajo_presupuesto.num_orden, tipo_factura_id: @orden_trabajo_presupuesto.tipo_factura_id, total: @orden_trabajo_presupuesto.total, vehiculo_id: @orden_trabajo_presupuesto.vehiculo_id } }
    end

    assert_redirected_to orden_trabajo_presupuesto_url(OrdenTrabajoPresupuesto.last)
  end

  test "should show orden_trabajo_presupuesto" do
    get orden_trabajo_presupuesto_url(@orden_trabajo_presupuesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_trabajo_presupuesto_url(@orden_trabajo_presupuesto)
    assert_response :success
  end

  test "should update orden_trabajo_presupuesto" do
    patch orden_trabajo_presupuesto_url(@orden_trabajo_presupuesto), params: { orden_trabajo_presupuesto: { cliente_id: @orden_trabajo_presupuesto.cliente_id, descripción: @orden_trabajo_presupuesto.descripción, estado_id: @orden_trabajo_presupuesto.estado_id, fecha: @orden_trabajo_presupuesto.fecha, mecanico_id: @orden_trabajo_presupuesto.mecanico_id, num_orden: @orden_trabajo_presupuesto.num_orden, tipo_factura_id: @orden_trabajo_presupuesto.tipo_factura_id, total: @orden_trabajo_presupuesto.total, vehiculo_id: @orden_trabajo_presupuesto.vehiculo_id } }
    assert_redirected_to orden_trabajo_presupuesto_url(@orden_trabajo_presupuesto)
  end

  test "should destroy orden_trabajo_presupuesto" do
    assert_difference('OrdenTrabajoPresupuesto.count', -1) do
      delete orden_trabajo_presupuesto_url(@orden_trabajo_presupuesto)
    end

    assert_redirected_to orden_trabajo_presupuestos_url
  end
end
