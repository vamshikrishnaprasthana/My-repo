require "application_system_test_case"

class PlainsTest < ApplicationSystemTestCase
  setup do
    @plain = plains(:one)
  end

  test "visiting the index" do
    visit plains_url
    assert_selector "h1", text: "Plains"
  end

  test "creating a Plain" do
    visit plains_url
    click_on "New Plain"

    fill_in "Name", with: @plain.name
    fill_in "Price", with: @plain.price
    click_on "Create Plain"

    assert_text "Plain was successfully created"
    click_on "Back"
  end

  test "updating a Plain" do
    visit plains_url
    click_on "Edit", match: :first

    fill_in "Name", with: @plain.name
    fill_in "Price", with: @plain.price
    click_on "Update Plain"

    assert_text "Plain was successfully updated"
    click_on "Back"
  end

  test "destroying a Plain" do
    visit plains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plain was successfully destroyed"
  end
end
