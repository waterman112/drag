class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :books do |t|
      t.string :name
    end
  end
end
