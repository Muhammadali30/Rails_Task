class CoursesController < ApplicationController
    before_action :method_edit, only: [:edit, :update, :destroy]
    def index
        @courses=Course.all
    end
    def new
        @course=Course.new

    end
    def create
        @course=Course.new(course_params)
        if @teacher.save
            redirect_to courses_path 
        end
    end
    def edit
      
    end
    def update
     
        if @course.update(course_params)
            redirect_to courses_path
        end
    end
    def destroy
        if @course.destroy
            redirect_to courses_path 
        end
    end
    private
    def course_params
        params.require(:course).permit(:name)
    end
    def method_edit
        @course=Course.find(params[:id])
    end
end
