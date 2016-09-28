class AddLessonNameToLessons < ActiveRecord::Migration
  def self.up
    add_column :lessons, :lesson_name, :string
  end

  def self.down
    remove_column :lessons,:lesson_mane, :string
  end
end
