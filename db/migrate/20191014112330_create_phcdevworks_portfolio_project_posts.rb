class CreatePhcdevworksPortfolioProjectPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_project_posts do |t|

      t.string :post_title
      t.text :post_description

      t.string :post_url
      t.string :post_status
      t.string :post_image
      t.string :post_images

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
