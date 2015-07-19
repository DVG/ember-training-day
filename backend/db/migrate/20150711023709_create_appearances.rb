class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.references :actor, index: true, foreign_key: true
      t.references :character, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
