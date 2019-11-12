require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::PagesController < ApplicationController

    # Layout
    layout "phcdevworks_portfolio/frontend"

    # INDEX
    def index
      @phcdevworks_projects_index = Project::Post.where(post_status: "published").order("post_title ASC")
    end

    # SHOW
    def show
      @phcdevworks_projects_single = Project::Post.friendly.find(params[:id])
    end

  end
end
