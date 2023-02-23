require "application_system_test_case"

class ComapaniesTest < ApplicationSystemTestCase
  setup do
    @comapany = comapanies(:one)
  end

  test "visiting the index" do
    visit comapanies_url
    assert_selector "h1", text: "Comapanies"
  end

  test "should create comapany" do
    visit comapanies_url
    click_on "New comapany"

    fill_in "Name", with: @comapany.name
    click_on "Create Comapany"

    assert_text "Comapany was successfully created"
    click_on "Back"
  end

  test "should update Comapany" do
    visit comapany_url(@comapany)
    click_on "Edit this comapany", match: :first

    fill_in "Name", with: @comapany.name
    click_on "Update Comapany"

    assert_text "Comapany was successfully updated"
    click_on "Back"
  end

  test "should destroy Comapany" do
    visit comapany_url(@comapany)
    click_on "Destroy this comapany", match: :first

    assert_text "Comapany was successfully destroyed"
  end
end
