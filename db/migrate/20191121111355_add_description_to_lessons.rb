class AddDescriptionToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :description, :string
  end
end
