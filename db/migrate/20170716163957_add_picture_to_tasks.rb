class AddPictureToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :picture, :string
  end
end
