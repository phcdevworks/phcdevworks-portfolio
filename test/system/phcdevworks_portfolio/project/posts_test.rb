require "application_system_test_case"

module PhcdevworksPortfolio
  class Project::PostsTest < ApplicationSystemTestCase
    setup do
      @project_post = phcdevworks_portfolio_project_posts(:one)
    end

    test "visiting the index" do
      visit project_posts_url
      assert_selector "h1", text: "Project/Posts"
    end

    test "creating a Post" do
      visit project_posts_url
      click_on "New Project/Post"

      fill_in "Project post description", with: @project_post.project_post_description
      fill_in "Project post image", with: @project_post.project_post_image
      fill_in "Project post images", with: @project_post.project_post_images
      fill_in "Project post status", with: @project_post.project_post_status
      fill_in "Project post title", with: @project_post.project_post_title
      fill_in "Project post type", with: @project_post.project_post_type
      fill_in "Project post url", with: @project_post.project_post_url
      click_on "Create Post"

      assert_text "Post was successfully created"
      click_on "Back"
    end

    test "updating a Post" do
      visit project_posts_url
      click_on "Edit", match: :first

      fill_in "Project post description", with: @project_post.project_post_description
      fill_in "Project post image", with: @project_post.project_post_image
      fill_in "Project post images", with: @project_post.project_post_images
      fill_in "Project post status", with: @project_post.project_post_status
      fill_in "Project post title", with: @project_post.project_post_title
      fill_in "Project post type", with: @project_post.project_post_type
      fill_in "Project post url", with: @project_post.project_post_url
      click_on "Update Post"

      assert_text "Post was successfully updated"
      click_on "Back"
    end

    test "destroying a Post" do
      visit project_posts_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Post was successfully destroyed"
    end
  end
end
