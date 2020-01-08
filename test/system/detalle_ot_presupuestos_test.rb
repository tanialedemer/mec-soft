require "application_system_test_case"

class DetalleOtPresupuestosTest < ApplicationSystemTestCase
  setup do
    @detalle_ot_presupuesto = detalle_ot_presupuestos(:one)
  end

  test "visiting the index" do
    visit detalle_ot_presupuestos_url
    assert_selector "h1", text: "Detalle Ot Presupuestos"
  end

  test "creating a Detalle ot presupuesto" do
    visit detalle_ot_presupuestos_url
    click_on "New Detalle Ot Presupuesto"

    fill_in "Cantidad", with: @detalle_ot_presupuesto.cantidad
    fill_in "Orden trabajo presupuesto", with: @detalle_ot_presupuesto.orden_trabajo_presupuesto_id
    fill_in "Precio venta", with: @detalle_ot_presupuesto.precio_venta
    fill_in "Repuesto servicio", with: @detalle_ot_presupuesto.repuesto_servicio_id
    fill_in "Subtotal", with: @detalle_ot_presupuesto.subtotal
    click_on "Create Detalle ot presupuesto"

    assert_text "Detalle ot presupuesto was successfully created"
    click_on "Back"
  end

  test "updating a Detalle ot presupuesto" do
    visit detalle_ot_presupuestos_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @detalle_ot_presupuesto.cantidad
    fill_in "Orden trabajo presupuesto", with: @detalle_ot_presupuesto.orden_trabajo_presupuesto_id
    fill_in "Precio venta", with: @detalle_ot_presupuesto.precio_venta
    fill_in "Repuesto servicio", with: @detalle_ot_presupuesto.repuesto_servicio_id
    fill_in "Subtotal", with: @detalle_ot_presupuesto.subtotal
    click_on "Update Detalle ot presupuesto"

    assert_text "Detalle ot presupuesto was successfully updated"
    click_on "Back"
  end

  test "destroying a Detalle ot presupuesto" do
    visit detalle_ot_presupuestos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detalle ot presupuesto was successfully destroyed"
  end
end
