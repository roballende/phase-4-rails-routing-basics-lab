class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students 
    end

    def grades 
        standing = Student.all.order(grade: :desc)
        render json: standing
    end

    def highest_grade
        top = Student.all.order(grade: :desc).first
        render json: top
    end

end
