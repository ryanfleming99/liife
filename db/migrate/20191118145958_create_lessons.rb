class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :speciality
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
