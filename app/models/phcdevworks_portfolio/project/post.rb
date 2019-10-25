module PhcdevworksPortfolio
class Project::Post < ApplicationRecord

# Image Upload
has_one_attached :project_post_image

# Relationships
has_and_belongs_to_many :categories, class_name: "Project::Category", :join_table => "phcdevworks_portfolio_categories_posts"
has_and_belongs_to_many :types, class_name: "Project::Type", :join_table => "phcdevworks_portfolio_posts_types"
belongs_to :user, class_name: "PhcdevworksAccounts::User"

end
end
