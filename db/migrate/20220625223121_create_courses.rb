class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :price
      t.string :status
      t.text :description
      t.date :duration
      t.string :url

      t.timestamps
    end
  end
end
