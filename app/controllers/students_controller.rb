class StudentsController < ApplicationController
    def index
        @students=Student.all
    end
    def show
        @student=Student.find(params[:id])
    end
    def new
        @student=Student.new
        @student.student_teachers.build
        @student.student_courses.build

    end
    def create
        @student=Student.new(student_params)
        if @student.save
            redirect_to students_path 
        end
    end
    def edit
        @student=Student.find(params[:id])
    end
    def update
        @student=Student.find(params[:id])
        if @student.update(student_params)
            redirect_to student_path(@student)
        end
    end
    def destroy
        @student=Student.find(params[:id])
        if @student.destroy
            redirect_to students_path 
        end
    end
    private
    def student_params
        params.require(:student).permit(:name,student_teachers_attributes: [:id, :teacher_id],student_courses_attributes: [:id, :course_id])
    end
end
