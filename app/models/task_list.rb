class TaskList < ActiveRecord::Base
	has_many :task_items, dependent: :nullify
	belongs_to :user
end
