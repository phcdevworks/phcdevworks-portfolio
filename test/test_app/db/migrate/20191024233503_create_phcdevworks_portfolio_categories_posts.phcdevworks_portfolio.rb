# This migration comes from phcdevworks_portfolio (originally 20191024232111)
class CreatePhcdevworksPortfolioCategoriesPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_categories_posts do |t|
      t.integer :category_id
      t.integer :post_id
    end
  end
end
