class RenameTitleFromBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.rename :name , :title
    end
  end

  def self.down
    t.rename :title,:name
  end
end
