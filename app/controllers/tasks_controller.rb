class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to task_path(@task)
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
