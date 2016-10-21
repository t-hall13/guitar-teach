class ChangeProjectIdToCourseId < ActiveRecord::Migration
  def up
    rename_column("user_courses", "project_id", "course_id")
  end
    def down
    rename_column("user_courses", "course_id", "project_id")
  end
end
