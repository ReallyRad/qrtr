class RemoveLinkFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :link
  end

  def down
    add_column :videox, :link, :string
  end
end
