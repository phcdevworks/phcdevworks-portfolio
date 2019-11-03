# This migration comes from phcdevworks_portfolio (originally 20191102091731)
class CreatePhcdevworksPortfolioProjectCategoryVersions < ActiveRecord::Migration[6.0]
  TEXT_BYTES = 1_073_741_823
  def change

    create_table :phcdevworks_portfolio_project_category_versions do |t|

      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.datetime :created_at

    end

    add_index :phcdevworks_portfolio_project_category_versions, %i(item_type item_id), :name => 'proj_category_versions'

  end
end
