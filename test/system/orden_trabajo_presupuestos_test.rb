require "application_system_test_case"

class OrdenTrabajoPresupuestosTest < ApplicationSystemTestCase
  setup do
    @orden_trabajo_presupuesto = orden_trabajo_presupuestos(:one)
  end

  test "visiting the index" do
    visit orden_trabajo_presupuestos_url
    assert_selector "h1", text: "Orden Trabajo Presupuestos"
  end

  test "creating a Orden trabajo presupuesto" do
    visit orden_trabajo_presupuestos_url
    click_on "New Orden Trabajo Presupuesto"

    fill_in "Cliente", with: @orden_trabajo_presupuesto.cliente_id
    fill_in "Descripción", with: @orden_trabajo_presupuesto.descripción
    fill_in "Estado", with: @orden_trabajo_presupuesto.estado_id
    fill_in "Fecha", with: @orden_trabajo_presupuesto.fecha
    fill_in "Mecanico", with: @orden_trabajo_presupuesto.mecanico_id
    fill_in "Num orden", with: @orden_trabajo_presupuesto.num_orden
    fill_in "Tipo factura", with: @orden_trabajo_presupuesto.tipo_factura_id
    fill_in "Total", with: @orden_trabajo_presupuesto.total
    fill_in "Vehiculo", with: @orden_trabajo_presupuesto.vehiculo_id
    click_on "Create Orden trabajo presupuesto"

    assert_text "Orden trabajo presupuesto was successfully created"
    click_on "Back"
  end

  test "updating a Orden trabajo presupuesto" do
    visit orden_trabajo_presupuestos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @orden_trabajo_presupuesto.cliente_id
    fill_in "Descripción", with: @orden_trabajo_presupuesto.descripción
    fill_in "Estado", with: @orden_trabajo_presupuesto.estado_id
    fill_in "Fecha", with: @orden_trabajo_presupuesto.fecha
    fill_in "Mecanico", with: @orden_trabajo_presupuesto.mecanico_id
    fill_in "Num orden", with: @orden_trabajo_presupuesto.num_orden
    fill_in "Tipo factura", with: @orden_trabajo_presupuesto.tipo_factura_id
    fill_in "Total", with: @orden_trabajo_presupuesto.total
    fill_in "Vehiculo", with: @orden_trabajo_presupuesto.vehiculo_id
    click_on "Update Orden trabajo presupuesto"

    assert_text "Orden trabajo presupuesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Orden trabajo presupuesto" do
    visit orden_trabajo_presupuestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orden trabajo presupuesto was successfully destroyed"
  end
end
