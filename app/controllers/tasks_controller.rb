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
    @task.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task) # restaurants ( pural will take u to All )
  end

  # NEW
  def new
    @task = Task.new
  end


  # EDIT


  # UPDATE
  def update
    @tasks = Task.find(params[:id])
    @task.update(task_params)
    # no need for app/views/tasks/update.html.erb
    redirect_to task_path(@task)

  end


  # DESTROY


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end


end
