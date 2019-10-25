module PhcdevworksPortfolio
    class Project::Type < ApplicationRecord

        # Relationships
        has_and_belongs_to_many :posts, class_name: "Project::Post", :join_table => "phcdevworks_portfolio_posts_types", :dependent => :destroy
        belongs_to :user, class_name: "PhcdevworksAccounts::User"

    end
end
