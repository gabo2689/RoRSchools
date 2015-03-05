class Grade < ActiveRecord::Base
  has_many :subjects
  
  validates_presence_of :name,:name_teacher
  validates_numericality_of :maximun_students, greater_or_equal_than: 0

  accepts_nested_attributes_for :subjects, reject_if: :all_blank

end
