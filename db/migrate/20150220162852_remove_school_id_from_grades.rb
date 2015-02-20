class RemoveSchoolIdFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :school_id, :integer
  end
end
