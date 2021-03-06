class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :slug
      t.string :title
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
