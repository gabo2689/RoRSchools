class Student < ActiveRecord::Base
	validates_presence_of :name
	validates_numericality_of :final_score_average, greater_or_equal_than: 0
	validates_uniqueness_of :email, allow_blank: true
	def self.gender_available_for_select
      ["Male", "Female"]
    end 


around_create :ZeroToFinalScoreAndFalseGraduate

private
def ZeroToFinalScoreAndFalseGraduate 
	self.final_score_average = 0
	self.graduate = 0
	yield
end


end
