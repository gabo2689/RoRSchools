class StudentsController < ApplicationController
  def index
  	@students = Student.order(:name)
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new(gender: "Male")
  end

  def create
    @student = Student.new(student_params)
    @student.final_score_average = 0
    @student.graduate = 0

    if @student.save
      redirect_to students_path, 
        flash: {notice: "Student created successfully"}
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to students_path, 
        flash: {notice: "Student edit successfully"}
    else
      render :edit
    end
  end

  private

  	def student_params
  		params.require(:student).permit!
  	end
end
