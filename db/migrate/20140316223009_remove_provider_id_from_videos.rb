class RemoveProviderIdFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :provider_id
  end

  def down
    add_column :videos, :provider_id, :integer
  end
end
