class Grade < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
end
