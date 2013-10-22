class ProjectsController < ApplicationController
  def index
   @projects = Project.all
   render 'projects/index'
  end

  def new
    @project = Project.new
    Video.new(:project_id => @project.id)
    render 'projects/new'
  end

  def create
    @project = Project.new params[:project]
    if @project.save
      flash[:success]="Project created!"
      index
    end
  end

  def edit
    @project = Project.find(params[:id])
    render 'projects/edit'
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success]="Project updated!"
      index
    end

  end
end
