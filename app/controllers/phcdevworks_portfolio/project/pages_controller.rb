require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::PagesController < ApplicationController

    # Layout
    layout "phcdevworks_portfolio/frontend"

    # INDEX
    def index
      @phcdevworks_projects_index = Project::Post.where(project_post_status: "published").order("project_post_title ASC")
      @phcdevworks_projects_randomizer = Project::Post.order('RANDOM()').limit(1)
    end

    # SHOW
    def show
      @phcdevworks_projects_single = Project::Post.friendly.find(params[:id])
    end

  end
end
