# This migration comes from phcdevworks_portfolio (originally 20191021225316)
class CreatePhcdevworksPortfolioProjectTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_project_types do |t|

      t.string :project_type_name

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
