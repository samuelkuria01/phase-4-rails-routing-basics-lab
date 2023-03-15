class StudentsController < ApplicationController

    def index
        students = Student.all()
        render json: students
    end

    def show
        students = Student.find_by(id: params[:id])
        if students
        render json: students
        else
            render json: {error: 'cheese not found'}
        end
    end

    def grades 
        students = Students.all.order(grade: :desc)
        render json: students
    end
end
