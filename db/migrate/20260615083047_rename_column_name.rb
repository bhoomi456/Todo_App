class RenameColumnName < ActiveRecord::Migration[8.1]
  def change
    rename_column :tasks, :name, :title
  end
end
