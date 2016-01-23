class TaskItemsController < ApplicationController

	before_action :find_task_list
	before_action :find_task_item, except: [:create]


	def create
		@task_item = @task_list.task_items.create(task_items_params)

		if @task_item.save
			redirect_to @task_list, notice: "Task item successfully added"
		else
			render 'new', notice: "Something went wrong!"
		end
	end

	def destroy
		@task_item.destroy
		redirect_to @task_list
	end

	def complete
		 @task_item.toggle_completion!
		 redirect_to @task_list, notice: "Task item updated."
	end

	private

	def task_items_params
		params[:task_item].permit(:title)
	end

	def find_task_list
		@task_list = TaskList.find(params[:task_list_id])
	end

	def find_task_item
		@task_item = @task_list.task_items.find(params[:id])
	end
end
