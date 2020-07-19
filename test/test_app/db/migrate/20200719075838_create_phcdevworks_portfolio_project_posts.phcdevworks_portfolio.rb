# This migration comes from phcdevworks_portfolio (originally 20191014112330)
class CreatePhcdevworksPortfolioProjectPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_project_posts do |t|

      t.string :project_post_title
      t.text :project_post_description

      t.string :project_post_url
      t.string :project_post_status

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
