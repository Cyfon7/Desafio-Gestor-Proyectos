class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23"

  def index
    if params[:status_search].present?
      @projects = Project.where('status = ?', params[:status_search])
    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.create(project_name: params[:project_name],
                              description: params[:description],
                              start_date: params[:start_date],
                              end_date: params[:end_date],
                              status: params[:status])
  end

  def dashboard
  end

  def project_creation_form
  end

  def search_bar
  end

end
