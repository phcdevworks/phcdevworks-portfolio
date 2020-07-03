class RemoveImagesColsFromPhcdevworksPortfolioProjectPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :phcdevworks_portfolio_project_posts, :post_image, :string
    remove_column :phcdevworks_portfolio_project_posts, :post_images, :string

  end
end
