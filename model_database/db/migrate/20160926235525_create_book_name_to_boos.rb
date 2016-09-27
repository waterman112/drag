class CreateBookNameToBoos < ActiveRecord::Migration
  def change
    create_table :book_name_to_boos do |t|
      t.string :bookname
    end
  end
end
