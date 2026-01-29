class CreateSrcs < ActiveRecord::Migration[8.1]
  def change
    create_table :srcs do |t|
      t.string :original
      t.string :large2x
      t.string :large
      t.string :medium
      t.string :small
      t.string :portrait
      t.string :landscape
      t.string :tiny
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
