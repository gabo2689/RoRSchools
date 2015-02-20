class AddMaximunStudentsToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :maximun_students, :integer
  end
end
