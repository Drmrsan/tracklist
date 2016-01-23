class TaskList < ActiveRecord::Base
	has_many :task_items
	belongs_to :user

  def has_completed_items?
    todo_items.complete.size > 0
  end

  def has_incomplete_items?
    todo_items.incomplete.size > 0
  end 
end
