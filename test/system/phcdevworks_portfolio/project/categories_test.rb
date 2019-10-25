require "application_system_test_case"

module PhcdevworksPortfolio
  class Project::CategoriesTest < ApplicationSystemTestCase
    setup do
      @project_category = phcdevworks_portfolio_project_categories(:one)
    end

    test "visiting the index" do
      visit project_categories_url
      assert_selector "h1", text: "Project/Categories"
    end

    test "creating a Category" do
      visit project_categories_url
      click_on "New Project/Category"

      fill_in "Project category name", with: @project_category.project_category_name
      click_on "Create Category"

      assert_text "Category was successfully created"
      click_on "Back"
    end

    test "updating a Category" do
      visit project_categories_url
      click_on "Edit", match: :first

      fill_in "Project category name", with: @project_category.project_category_name
      click_on "Update Category"

      assert_text "Category was successfully updated"
      click_on "Back"
    end

    test "destroying a Category" do
      visit project_categories_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Category was successfully destroyed"
    end
  end
end
