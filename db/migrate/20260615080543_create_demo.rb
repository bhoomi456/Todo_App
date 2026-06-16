class CreateDemo < ActiveRecord::Migration[8.1]
  def change
    create_table :demos do |t|
      t.string :name

      t.timestamps
    end
  end
end
