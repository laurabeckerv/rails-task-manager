class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def find
    @tasks = Task.find(params[:id])
  end
end
