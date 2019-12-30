require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Apellido", with: @client.apellido
    fill_in "Direccion", with: @client.direccion
    fill_in "Email", with: @client.email
    fill_in "Nombre", with: @client.nombre
    fill_in "Ruc", with: @client.ruc
    fill_in "Telefono", with: @client.telefono
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @client.apellido
    fill_in "Direccion", with: @client.direccion
    fill_in "Email", with: @client.email
    fill_in "Nombre", with: @client.nombre
    fill_in "Ruc", with: @client.ruc
    fill_in "Telefono", with: @client.telefono
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
