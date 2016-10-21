class FixStudentSince < ActiveRecord::Migration
  def up
    rename_column("courses", "student since", "student_since")
  end
    def down
    rename_column("courses", "student_since", "student since")
  end
end
