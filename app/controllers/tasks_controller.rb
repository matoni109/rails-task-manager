class TasksController < ApplicationController

  # READ ONE
  def show
    @task = Task.find(params[:id])
  end

  # READ ALL
  def index
    @tasks = Task.all
  end

  # CREATE
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  # NEW
  def new
    @task = Task.new
  end


  # EDIT
  def edit
    @tasks = Task.find(params[:id])
  end


  # UPDATE
  def update
    @tasks = Task.find(params[:id])
    if   @tasks.update(task_params)
      redirect_to task_path(@tasks)
    else
      render :edit
    end
  end

  # DESTROY
  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to root_path
  end


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end


end
