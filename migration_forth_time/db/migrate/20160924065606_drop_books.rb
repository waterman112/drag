class DropBooks < ActiveRecord::Migration
  def self.up
    drop_table :books
  end

  def self.down
    create_table :books do |t|
      t.string :title
    end
  end
end
