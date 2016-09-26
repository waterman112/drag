class DropBooks < ActiveRecord::Migration
  def self.up
    drop_table :books do |t|

    end
  end

  def self.down
    create_table :books do |t|

    end
  end
end
