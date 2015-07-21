class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :content
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
