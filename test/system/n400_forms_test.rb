require "application_system_test_case"

class N400FormsTest < ApplicationSystemTestCase
  setup do
    @n400_form = n400_forms(:one)
  end

  test "visiting the index" do
    visit n400_forms_url
    assert_selector "h1", text: "N400 Forms"
  end

  test "creating a N400 form" do
    visit n400_forms_url
    click_on "New N400 Form"

    fill_in "Eligitility", with: @n400_form.eligitility
    click_on "Create N400 form"

    assert_text "N400 form was successfully created"
    click_on "Back"
  end

  test "updating a N400 form" do
    visit n400_forms_url
    click_on "Edit", match: :first

    fill_in "Eligitility", with: @n400_form.eligitility
    click_on "Update N400 form"

    assert_text "N400 form was successfully updated"
    click_on "Back"
  end

  test "destroying a N400 form" do
    visit n400_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "N400 form was successfully destroyed"
  end
end
