class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def new
    #code
  end

  def create
    #model
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #view
    redirect_to students_path 
  end

  def show
    @student = Student.find(params[:id])
  end

  private

     def set_student
       @student = Student.find(params[:id])
     end

end
