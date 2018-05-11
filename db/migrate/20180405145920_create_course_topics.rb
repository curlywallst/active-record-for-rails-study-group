class CreateCourseTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :course_topics do |t|
      t.belongs_to :course
      t.belongs_to :topic
      t.timestamps
    end
  end
end
