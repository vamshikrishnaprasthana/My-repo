require "application_system_test_case"

class FusersTest < ApplicationSystemTestCase
  setup do
    @fuser = fusers(:one)
  end

  test "visiting the index" do
    visit fusers_url
    assert_selector "h1", text: "Fusers"
  end

  test "creating a Fuser" do
    visit fusers_url
    click_on "New Fuser"

    fill_in "Age", with: @fuser.age
    fill_in "First name", with: @fuser.first_name
    fill_in "Last name", with: @fuser.last_name
    fill_in "Mobile", with: @fuser.mobile
    click_on "Create Fuser"

    assert_text "Fuser was successfully created"
    click_on "Back"
  end

  test "updating a Fuser" do
    visit fusers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @fuser.age
    fill_in "First name", with: @fuser.first_name
    fill_in "Last name", with: @fuser.last_name
    fill_in "Mobile", with: @fuser.mobile
    click_on "Update Fuser"

    assert_text "Fuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuser" do
    visit fusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuser was successfully destroyed"
  end
end
