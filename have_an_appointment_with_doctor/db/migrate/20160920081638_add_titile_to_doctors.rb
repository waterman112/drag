class AddTitileToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :title, :string
    add_column :doctors, :tex, :string
  end
end
