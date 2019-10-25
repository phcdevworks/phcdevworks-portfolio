require 'test_helper'

module PhcdevworksPortfolio
  class Project::CategoriesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @project_category = phcdevworks_portfolio_project_categories(:one)
    end

    test "should get index" do
      get project_categories_url
      assert_response :success
    end

    test "should get new" do
      get new_project_category_url
      assert_response :success
    end

    test "should create project_category" do
      assert_difference('Project::Category.count') do
        post project_categories_url, params: { project_category: { project_category_name: @project_category.project_category_name } }
      end

      assert_redirected_to project_category_url(Project::Category.last)
    end

    test "should show project_category" do
      get project_category_url(@project_category)
      assert_response :success
    end

    test "should get edit" do
      get edit_project_category_url(@project_category)
      assert_response :success
    end

    test "should update project_category" do
      patch project_category_url(@project_category), params: { project_category: { project_category_name: @project_category.project_category_name } }
      assert_redirected_to project_category_url(@project_category)
    end

    test "should destroy project_category" do
      assert_difference('Project::Category.count', -1) do
        delete project_category_url(@project_category)
      end

      assert_redirected_to project_categories_url
    end
  end
end
