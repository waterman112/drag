class CreateBook < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
    end
  end
end
