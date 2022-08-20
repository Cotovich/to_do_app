class TasksController < ApplicationController
  def new
    @task = Task.new
    @list = List.find(params[:list_id])
  end

  def create
    @task = Task.new(title: params[:name],
                     body: params[:body],
                     list_id: params[:list_id],
                     user_id: params[:user_id],
                     is_active: true)
    @task.save
    @list = List.find(params[:list_id])
  end
end
