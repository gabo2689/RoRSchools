class Subject < ActiveRecord::Base
  belongs_to :grade
  validates_presence_of :name
end
