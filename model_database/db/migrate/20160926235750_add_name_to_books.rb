class AddNameToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :Name, :string
  end

  def self.down
    remove_columne :books,:Name,:string
  end
end
