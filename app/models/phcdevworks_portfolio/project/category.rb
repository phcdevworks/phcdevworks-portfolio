module PhcdevworksPortfolio
    class Project::Category < ApplicationRecord

        # Relationships
        has_and_belongs_to_many :posts, class_name: "Project::Post", :join_table => "phcdevworks_portfolio_categories_posts", :dependent => :destroy
        belongs_to :user, class_name: "PhcdevworksAccounts::User"

    end
end
