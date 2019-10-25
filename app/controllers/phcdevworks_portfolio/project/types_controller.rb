require_dependency "phcdevworks_portfolio/application_controller"

module PhcdevworksPortfolio
  class Project::TypesController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_project_type, only: [:edit, :update, :destroy]

    # GET /project/types
    def index
      @project_types = Project::Type.all
    end

    # GET /project/types/new
    def new
      @project_type = Project::Type.new
    end

    # GET /project/types/1/edit
    def edit
    end

    # POST /project/types
    def create
      @project_type = Project::Type.new(project_type_params)
      @project_type.user_id = current_user.id
      @project_type.org_id = current_user.org_id
      respond_to do |format|
        if @project_type.save
          format.html { redirect_to project_types_path, :flash => { :success => 'Project Type has been Added.' }}
          format.json { render :show, status: :created, location: @project_type }
        else
          format.html { render :new }
          format.json { render json: @project_type.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /project/types/1
    def update
      respond_to do |format|
        if @project_type.update(project_post_params)
          format.html { redirect_to project_types_path, :flash => { :notice => 'Project Type has been Updated.' }}
          format.json { render :show, status: :ok, location: @project_type }
        else
          format.html { render :edit }
          format.json { render json: @project_type.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /project/types/1
    def destroy
      @project_type.destroy
      respond_to do |format|
        format.html { redirect_to project_types_path, :flash => { :error => 'Project Type has been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_project_type
      @project_type = Project::Type.find(params[:id])
    end

    # Whitelist
    def project_type_params
      params.require(:project_type).permit(:project_type_name, :slug, :user_id, :org_id)
    end

  end
end
