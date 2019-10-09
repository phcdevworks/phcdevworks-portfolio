require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::PostsController < ApplicationController
    before_action :set_project_post, only: [:show, :edit, :update, :destroy]

    # GET /project/posts
    def index
      @project_posts = Project::Post.all
    end

    # GET /project/posts/1
    def show
    end

    # GET /project/posts/new
    def new
      @project_post = Project::Post.new
    end

    # GET /project/posts/1/edit
    def edit
    end

    # POST /project/posts
    def create
      @project_post = Project::Post.new(project_post_params)

      if @project_post.save
        redirect_to @project_post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /project/posts/1
    def update
      if @project_post.update(project_post_params)
        redirect_to @project_post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /project/posts/1
    def destroy
      @project_post.destroy
      redirect_to project_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_project_post
        @project_post = Project::Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def project_post_params
        params.require(:project_post).permit(:project_post_title, :project_post_description, :project_post_url, :project_post_type, :project_post_status, :project_post_image, :project_post_images)
      end
  end
end
