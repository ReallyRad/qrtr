class CreateMadeWiths < ActiveRecord::Migration
  def change
    create_table :made_withs do |t|
      t.references :tool
      t.references :project
      t.timestamps
    end
  end
end
