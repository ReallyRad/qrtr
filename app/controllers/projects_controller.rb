class ProjectsController < ApplicationController
  def index
   @projects = Project.all
   render 'projects/index'
  end

  def new
    @project = Project.new
    render 'projects/new'
  end

  def show
    @project = Project.find params[:id]
    render 'projects/show'
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
    else
      flash[:error]=@project.errors
      edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      flash[:success]="Project deleted"
      index
    else
      flash[:error]=@project.errors
      index
    end
  end

end
