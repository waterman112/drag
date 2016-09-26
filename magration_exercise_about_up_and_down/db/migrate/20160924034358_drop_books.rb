class DropBooks < ActiveRecord::Migration
  def up
    drop_table :books
  end

  def down
    create_table :books
  end
end
