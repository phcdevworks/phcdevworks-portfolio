# This migration comes from phcdevworks_portfolio (originally 20191024232406)
class CreatePhcdevworksPortfolioProjectPostsTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_project_posts_types do |t|

      t.integer :post_id
      t.integer :type_id

    end
  end
end
