class ProjectsController < ApplicationController

  before_action :set_project, only:[:destroy, :show, :edit, :update]
  def index
    @projects = Project.all
  end
  def new
    @project = Project.new
    @project.user_projects.build

  end
  def create
    @project = Project.create(project_params)
    if @project.valid?
      redirect_to @project
    else
      flash[:errors] = @project.errors.full_messages
      redirect_to new_project_url
    end
  end

  def edit
    @users = @project.users
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      flash[:errors] = @project.errors.full_messages
      redirect_to edit_project_path(@project)
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end
  def show
    @users = @project.users
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:id, :title, :description)
  end
end
