class RemoveCategoryToTasks < ActiveRecord::Migration[8.1]
  def change
    remove_column :tasks, :category, :string
  end
end
