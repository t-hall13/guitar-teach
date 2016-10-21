class AlterProjects < ActiveRecord::Migration
  def up
    rename_table("projects", "courses")
    rename_column("courses","expected_completion_date", "student since")
  end
  def down
    rename_table("courses", "projects")
    rename_column("projects", "student since","expected_completion_date")
  end
end
