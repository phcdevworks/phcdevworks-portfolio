require "application_system_test_case"

module PhcdevworksPortfolio
  class Project::TypesTest < ApplicationSystemTestCase
    setup do
      @project_type = phcdevworks_portfolio_project_types(:one)
    end

    test "visiting the index" do
      visit project_types_url
      assert_selector "h1", text: "Project/Types"
    end

    test "creating a Type" do
      visit project_types_url
      click_on "New Project/Type"

      fill_in "Project type name", with: @project_type.project_type_name
      click_on "Create Type"

      assert_text "Type was successfully created"
      click_on "Back"
    end

    test "updating a Type" do
      visit project_types_url
      click_on "Edit", match: :first

      fill_in "Project type name", with: @project_type.project_type_name
      click_on "Update Type"

      assert_text "Type was successfully updated"
      click_on "Back"
    end

    test "destroying a Type" do
      visit project_types_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Type was successfully destroyed"
    end
  end
end
