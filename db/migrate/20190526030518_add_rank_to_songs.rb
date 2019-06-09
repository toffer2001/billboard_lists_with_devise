class AddRankToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :rank, :integer
  end
end
