class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable
      t.string :image
      t.timestamps
    end
  end
end
