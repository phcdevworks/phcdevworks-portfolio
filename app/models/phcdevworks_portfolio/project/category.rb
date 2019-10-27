module PhcdevworksPortfolio
  class Project::Category < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Relationships
    has_and_belongs_to_many :posts, class_name: "Project::Post", :join_table => "phcdevworks_portfolio_categories_posts", :dependent => :destroy
    belongs_to :user, class_name: "PhcdevworksAccounts::User"

    # Clean URL Define
    friendly_id :phcdev_project_category_nice_urls, use: [:slugged, :finders]

    def phcdev_project_category_nice_urls
      [:category_name]
    end

  end
end
