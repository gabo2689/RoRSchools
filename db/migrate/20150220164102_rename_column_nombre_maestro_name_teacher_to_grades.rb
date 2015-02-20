class RenameColumnNombreMaestroNameTeacherToGrades < ActiveRecord::Migration
  def change
  	rename_column :grades, :nombre_maestro, :name_teacher
  end
end
