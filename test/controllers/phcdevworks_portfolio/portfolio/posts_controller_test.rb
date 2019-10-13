require 'test_helper'

module PhcdevworksPortfolio
  class Portfolio::PostsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @portfolio_post = phcdevworks_portfolio_portfolio_posts(:one)
    end

    test "should get index" do
      get portfolio_posts_url
      assert_response :success
    end

    test "should get new" do
      get new_portfolio_post_url
      assert_response :success
    end

    test "should create portfolio_post" do
      assert_difference('Portfolio::Post.count') do
        post portfolio_posts_url, params: { portfolio_post: {  } }
      end

      assert_redirected_to portfolio_post_url(Portfolio::Post.last)
    end

    test "should show portfolio_post" do
      get portfolio_post_url(@portfolio_post)
      assert_response :success
    end

    test "should get edit" do
      get edit_portfolio_post_url(@portfolio_post)
      assert_response :success
    end

    test "should update portfolio_post" do
      patch portfolio_post_url(@portfolio_post), params: { portfolio_post: {  } }
      assert_redirected_to portfolio_post_url(@portfolio_post)
    end

    test "should destroy portfolio_post" do
      assert_difference('Portfolio::Post.count', -1) do
        delete portfolio_post_url(@portfolio_post)
      end

      assert_redirected_to portfolio_posts_url
    end
  end
end
