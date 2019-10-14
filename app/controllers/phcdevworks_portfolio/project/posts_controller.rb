require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::PostsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
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
      @project_post.user_id = current_user.id
      @project_post.org_id = current_user.org_id
      respond_to do |format|
        if @project_post.save
          format.html { redirect_to project_posts_path, :flash => { :success => 'Project Post has been Added.' }}
          format.json { render :show, status: :created, location: @project_post }
        else
          format.html { render :new }
          format.json { render json: @project_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /project/posts/1
    def update
      respond_to do |format|
        if @project_post.update(project_post_params)
          format.html { redirect_to project_posts_path, :flash => { :notice => 'Project Post has been Updated.' }}
          format.json { render :show, status: :ok, location: @project_post }
        else
          format.html { render :edit }
          format.json { render json: @project_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /project/posts/1
    def destroy
      @project_post.destroy
      respond_to do |format|
        format.html { redirect_to project_posts_path, :flash => { :error => 'Project Post has been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_project_post
      @project_post = Project::Post.find(params[:id])
    end

    # Whitelist
    def project_post_params
      params.require(:project_post).permit(:project_post_title, :project_post_description, :project_post_url, :project_post_type, :project_post_status, :project_post_image, :project_post_images)
    end

  end
end