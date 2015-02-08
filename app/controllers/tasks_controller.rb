class TasksController < ApplicationController
  def index
    render json: Task.all    
  end

  def create
    @task = Task.create(task_params)
    render json: @task
  end

  def update
    @task = Task.find(params[:id])
    @task.udpate(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: { status: "OK" }
  end

  private

  def task_params
    params.require(:task).permit(:description, :due_date, :user_id, :lead_id, :completed)
  end
end