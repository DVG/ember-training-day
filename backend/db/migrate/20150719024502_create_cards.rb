class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :difficulty
      t.boolean :complete
      t.text :comments
      t.integer :points
      t.timestamps null: false
    end
  end
end
