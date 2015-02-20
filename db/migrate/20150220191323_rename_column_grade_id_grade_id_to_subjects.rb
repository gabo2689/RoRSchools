class RenameColumnGradeIdGradeIdToSubjects < ActiveRecord::Migration
  def change
  	rename_column :subjects, :grades_id, :grade_id
  end
end
