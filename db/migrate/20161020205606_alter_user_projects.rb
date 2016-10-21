class AlterUserProjects < ActiveRecord::Migration
  def change
    rename_table("user_projects", "user_courses")
  end
end
