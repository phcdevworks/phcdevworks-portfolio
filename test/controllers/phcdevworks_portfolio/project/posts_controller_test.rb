require 'test_helper'

module PhcdevworksPortfolio
  class Project::PostsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @project_post = phcdevworks_portfolio_project_posts(:one)
    end

    test "should get index" do
      get project_posts_url
      assert_response :success
    end

    test "should get new" do
      get new_project_post_url
      assert_response :success
    end

    test "should create project_post" do
      assert_difference('Project::Post.count') do
        post project_posts_url, params: { project_post: {  } }
      end

      assert_redirected_to project_post_url(Project::Post.last)
    end

    test "should show project_post" do
      get project_post_url(@project_post)
      assert_response :success
    end

    test "should get edit" do
      get edit_project_post_url(@project_post)
      assert_response :success
    end

    test "should update project_post" do
      patch project_post_url(@project_post), params: { project_post: {  } }
      assert_redirected_to project_post_url(@project_post)
    end

    test "should destroy project_post" do
      assert_difference('Project::Post.count', -1) do
        delete project_post_url(@project_post)
      end

      assert_redirected_to project_posts_url
    end
  end
end
