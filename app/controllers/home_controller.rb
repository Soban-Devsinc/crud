class HomeController < ApplicationController
  before_action :set_projects, only:[:index]
  def index
  end
  private
  def set_projects
    @projects = Project.all
  end
end
