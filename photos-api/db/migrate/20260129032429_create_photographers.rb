class CreatePhotographers < ActiveRecord::Migration[8.1]
  def change
    create_table :photographers do |t|
      t.integer :photographer_id
      t.string :photographer
      t.string :photographer_url

      t.timestamps
    end
  end
end
