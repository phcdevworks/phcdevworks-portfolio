require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Website::PagesController < ApplicationController

    # Layout
    layout 'phcdevworks_tutorials/frontend'

    # INDEX
    def index
      @phcdevworks_projects_index = Project::Post.where(project_post_status: "published")
    end

    # SHOW
    def show
      @phcdevworks_projects_single = Project::Post.friendly.find(params[:id])
    end

  end
end
