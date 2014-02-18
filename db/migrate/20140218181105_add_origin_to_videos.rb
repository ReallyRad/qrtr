class AddOriginToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :origin, :string
  end
end
