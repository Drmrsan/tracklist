class UpdateForeignKeyInfoInTaskItems < ActiveRecord::Migration
  def change
  	add_foreign_key :task_item, :users, on_delete: :cascade
  end
end
