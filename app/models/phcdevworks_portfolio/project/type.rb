module PhcdevworksPortfolio
  class Project::Type < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksPortfolio::ProjectTypeVersions'

    # Relationships
    has_and_belongs_to_many :posts, class_name: "Project::Post", :join_table => "phcdevworks_portfolio_posts_types", :dependent => :destroy
    belongs_to :user, class_name: "PhcdevworksAccounts::User"

    # Clean URL Define
    friendly_id :phcdev_project_type_nice_urls, use: [:slugged, :finders]

    def phcdev_project_type_nice_urls
      [:type_name]
    end

  end
end
