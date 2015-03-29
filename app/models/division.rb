class Division < ActiveRecord::Base
  has_many :division_subjects
  has_many :subjects, through: :division_subjects
  has_many :students, class_name: 'User'
end
