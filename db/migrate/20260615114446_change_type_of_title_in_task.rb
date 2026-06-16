class ChangeTypeOfTitleInTask < ActiveRecord::Migration[8.1]
  def change
    change_column :tasks, :title, :text
  end
end
