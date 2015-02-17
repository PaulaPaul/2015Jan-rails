class Course < ActiveRecord::Base
  belongs_to  :department
  has_many   :enrollments
  has_many  :instructors
end
