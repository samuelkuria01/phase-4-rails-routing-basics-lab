class StudentsController < ApplicationController

    def index
        students = Students.all
        render json: students
    end

    def grades 
        students = Students.all.order(grade: :desc)
        render json: students
    end
end
