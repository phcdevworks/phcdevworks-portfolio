# This migration comes from phcdevworks_core_modules (originally 20200629113153)
class CreatePhcdevworksCoreModulesModulesCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_core_modules_modules_categories do |t|

      t.string :category_name

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
