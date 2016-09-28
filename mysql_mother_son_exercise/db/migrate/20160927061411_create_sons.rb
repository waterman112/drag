class CreateSons < ActiveRecord::Migration
  def self.up
    create_table :sons do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :sons
  end
end
