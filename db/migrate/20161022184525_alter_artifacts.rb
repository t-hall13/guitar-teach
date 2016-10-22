class AlterArtifacts < ActiveRecord::Migration
  def change
    rename_table("artifacts", "lessons")
    rename_column("lessons", "project_id", "course_id")
    rename_index("lessons", "project_id", "course_id")
  end
end
