class HomeController < ApplicationController
  before_action :set_projects, only:[:index]


  def index
    # @users = @project.users
  end



  private

  def set_projects
    @projects = Project.all
  end
end
