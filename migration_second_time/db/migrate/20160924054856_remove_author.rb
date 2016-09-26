class RemoveAuthor < ActiveRecord::Migration
  def self.up
    remove_column :books,:author,:string
  end

  def self.down
    add_column :books,:author,:string
  end
end
