class Subject < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4 }
  validates :description, presence:true, length: {minimum: 10}

  has_many :division_subjects
  has_many :divisions, through: :division_subjects
  has_one :teacher, class_name: 'User'
end
