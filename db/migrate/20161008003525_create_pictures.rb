class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.integer :width
      t.integer :height

      t.timestamps null: false
    end
  end
end
