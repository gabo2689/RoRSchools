class Subject < ActiveRecord::Base
  belongs_to :grade
  validates_presence_of :name



around_create :addTeacher
private

def addTeacher 
	self.teacher = self.grade.name_teacher
	yield
end

  
end
