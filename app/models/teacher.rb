class Teacher < ApplicationRecord
    has_many :student_teachers,dependent: :destroy
    has_many :students,through: :student_teachers,dependent: :destroy


    has_many :teacher_courses,dependent: :destroy
    has_many :courses,through: :teacher_courses,dependent: :destroy


    accepts_nested_attributes_for :student_teachers,allow_destroy: true
    accepts_nested_attributes_for :teacher_courses,allow_destroy: true

end
