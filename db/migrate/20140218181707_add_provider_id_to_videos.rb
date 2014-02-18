class AddProviderIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :provider_id, :integer
  end
end
