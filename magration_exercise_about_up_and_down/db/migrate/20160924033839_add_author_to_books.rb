class AddAuthorToBooks < ActiveRecord::Migration
  def up
    add_column :books, :author, :string
  end

  def down
    remve_column :books,:author,:string
  end
end
