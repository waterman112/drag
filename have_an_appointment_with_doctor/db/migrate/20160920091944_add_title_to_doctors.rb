class AddTitleToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :title, :string
  end
end
