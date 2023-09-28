class Student < ApplicationRecord
    has_many :student_teachers,dependent: :destroy
    has_many :teachers,through: :student_teachers,dependent: :destroy

    has_many :student_courses,dependent: :destroy
    has_many :courses,through: :student_courses,dependent: :destroy

    accepts_nested_attributes_for :student_teachers,allow_destroy: true
    accepts_nested_attributes_for :student_courses,allow_destroy: true

end
