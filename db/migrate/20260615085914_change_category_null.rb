class ChangeCategoryNull < ActiveRecord::Migration[8.1]
  def change
    change_column_null :tasks, :category, false
  end
end
