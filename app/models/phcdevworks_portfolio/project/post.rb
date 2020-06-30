module PhcdevworksPortfolio
  class Project::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksPortfolio::ProjectPostVersions'

    # Image Upload
    has_one_attached :post_image

    # Relationships
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_and_belongs_to_many :types, class_name: "PhcdevworksPortfolio::Project::Type", :join_table => "phcdevworks_portfolio_posts_types"
    has_and_belongs_to_many :categories, class_name: "PhcdevworksCoreModules::Modules::Category", :join_table => "phcdevworks_portfolio_categories_posts"


    # Clean URL Define
    friendly_id :phcdev_project_post_nice_urls, use: [:slugged, :finders]

    def phcdev_project_post_nice_urls
      [:post_title]
    end

  end
end
