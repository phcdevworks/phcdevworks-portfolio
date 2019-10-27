require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::CategoriesController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_project_category, only: [:edit, :update, :destroy]

    # GET /project/categories
    def index
      @project_categories = Project::Category.all
    end

    # GET /project/categories/new
    def new
      @project_category = Project::Category.new
    end

    # GET /project/categories/1/edit
    def edit
    end

    # POST /project/categories
    def create
      @project_category = Project::Category.new(project_category_params)
      @project_category.user_id = current_user.id
      @project_category.org_id = current_user.org_id
      respond_to do |format|
        if @project_category.save
          format.html { redirect_to project_categories_path, :flash => { :success => 'Project Category has been Added.' }}
          format.json { render :show, status: :created, location: @project_category }
        else
          format.html { render :new }
          format.json { render json: @project_category.errors, status: :unprocessable_entity }
        end
      end
    end
    
    # PATCH/PUT /project/categories/1
    def update
      respond_to do |format|
        if @project_category.update(project_post_params)
          format.html { redirect_to project_categories_path, :flash => { :notice => 'Project Category has been Updated.' }}
          format.json { render :show, status: :ok, location: @project_category }
        else
          format.html { render :edit }
          format.json { render json: @project_category.errors, status: :unprocessable_entity }
        end
      end
    end
    
    # DELETE /project/categories/1
    def destroy
      @project_category.destroy
      respond_to do |format|
        format.html { redirect_to project_categories_path, :flash => { :error => 'Project Category has been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_project_category
      @project_category = Project::Category.find(params[:id])
    end

    # Whitelist
    def project_category_params
      params.require(:project_category).permit(:category_name, :slug, :user_id, :org_id)
    end

  end
end
