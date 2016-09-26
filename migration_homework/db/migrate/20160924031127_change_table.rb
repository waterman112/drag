class ChangeTable < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.rename :name,:title
    end
  end
end
