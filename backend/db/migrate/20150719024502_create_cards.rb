class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :difficulty
      t.boolean :complete
      t.text :clue_1, :clue_2, :clue_3
      t.text :comments
      t.timestamps null: false
    end
  end
end
