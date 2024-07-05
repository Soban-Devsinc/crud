class ProjectsController < ApplicationController

  before_action :set_project, only:[:destroy, :show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.user_projects.build

  end

  def create
    @project = Project.create(project_params)
    redirect_to projects_path
  end

  def destroy
    @project.destroy
  end

  def show
    @users = @project.users
  end



  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:id, :title, :description, user_projects_attributes: [:user_id])
  end

end
