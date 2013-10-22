class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :project
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
