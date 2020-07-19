module PhcdevworksPortfolio
  class Project::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksPortfolio::ProjectPostVersions'

    # Image Upload
    has_one_attached :project_post_image

    # Relationships
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_and_belongs_to_many :types, class_name: "PhcdevworksPortfolio::Project::Type", :join_table => "phcdevworks_portfolio_project_posts_types", :dependent => :destroy
    has_and_belongs_to_many :categories, class_name: "PhcdevworksCoreModules::Post::Category", :join_table => "phcdevworks_portfolio_project_categories_posts", :dependent => :destroy
    belongs_to :optimization, class_name: "PhcdevworksCoreModules::Marketing::Optimization", optional: true

    # Clean URL Define
    friendly_id :project_post_nice_urls, use: [:slugged, :finders]

    def project_post_nice_urls
      [:project_post_title]
    end

  end
end
