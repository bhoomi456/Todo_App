class ChangeDefaultDescription < ActiveRecord::Migration[8.1]
  def change
    change_column_default :tasks, :description, "Add description"
  end
end
