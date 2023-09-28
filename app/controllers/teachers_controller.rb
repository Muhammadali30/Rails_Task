class TeachersController < ApplicationController
    def index
        @teachers=Teacher.all
    end
    def show
        @teacher=Teacher.find(params[:id])
    end
    def new
        @teacher=Teacher.new
        @teacher.student_teachers.build
        @teacher.teacher_courses.build

    end
    def create
        @teacher=Teacher.new(student_params)
        if @teacher.save
            redirect_to teachers_path 
        end
    end
    def edit
        @teacher=Teacher.find(params[:id])
       
    end
    def update
      
        @teacher=Teacher.find(params[:id])
        if @teacher.update(student_params)
            redirect_to teacher_path(@teacher)
        end
    end
    def destroy
        @teacher=Teacher.find(params[:id])
        if @teacher.destroy
            redirect_to teachers_path 
        end
    end
    private
    def student_params
        params.require(:teacher).permit(:name,student_teachers_attributes: [:id, :student_id],teacher_courses_attributes: [:id, :course_id])
    end
end
