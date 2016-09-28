class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :studnets
  end
end
