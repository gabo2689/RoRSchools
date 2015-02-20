class GradesController < ApplicationController
   def index
    @grades = Grade.order(:created_at)
  end

  def new
    @grade = Grade.new()
  end

 def create
    @grade = Client.new(grade_params)

    if @grade.save
      redirect_to grades_path, 
        flash: {notice: "Grade created successfully!"}
    else
      grade :new
    end
 end

  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])

    if @grade.update(grade_params)
      redirect_to grades_path, 
        flash: {notice: "grade update successfully"}
    else
      render :edit
    end
  end

  private

  def grade_params
    params.required(:grade).permit!
  end

end
