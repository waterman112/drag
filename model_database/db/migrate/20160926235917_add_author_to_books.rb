class AddAuthorToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :Author, :string
  end

  def self.down
    remove_column :books,:Author, :string
  end
end
