class CreateMothers < ActiveRecord::Migration
  def self.up
    create_table :mothers do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :mothers
  end
end
