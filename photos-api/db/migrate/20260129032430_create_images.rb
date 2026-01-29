class CreateImages < ActiveRecord::Migration[8.1]
  def change
    create_table :images do |t|
      t.integer :external_id
      t.integer :width
      t.integer :height
      t.string :url
      t.string :avg_color
      t.string :alt
      t.references :photographer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
