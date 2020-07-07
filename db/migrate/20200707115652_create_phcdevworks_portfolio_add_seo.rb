class CreatePhcdevworksPortfolioAddSeo < ActiveRecord::Migration[6.0]
  def change

    add_column :phcdevworks_portfolio_project_posts, :optimization_id, :string

  end
end
