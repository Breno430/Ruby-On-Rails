require "application_system_test_case"

class Departamento1sTest < ApplicationSystemTestCase
  setup do
    @departamento1 = departamento1s(:one)
  end

  test "visiting the index" do
    visit departamento1s_url
    assert_selector "h1", text: "Departamento1s"
  end

  test "creating a Departamento1" do
    visit departamento1s_url
    click_on "New Departamento1"

    fill_in "Nome", with: @departamento1.nome
    click_on "Create Departamento1"

    assert_text "Departamento1 was successfully created"
    click_on "Back"
  end

  test "updating a Departamento1" do
    visit departamento1s_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @departamento1.nome
    click_on "Update Departamento1"

    assert_text "Departamento1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Departamento1" do
    visit departamento1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Departamento1 was successfully destroyed"
  end
end
