class AddNombreMaestroToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :nombre_maestro, :string
  end
end
