class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.string :student_id
      t.string :teacher_id
    end
  end

  def self.down
    drop_table :lessons
  end
end
