class AddMotherIdToSons < ActiveRecord::Migration
  def self.up
    add_column :sons, :mother_id, :integer
  end

  def self.down
    remove_column :sons,:mother_id,:integer
  end
end
