class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.decimal :final_score_average 
      t.boolean :graduate
      t.timestamps
    end
  end
end
