class SubjectsController < ApplicationController
  
  def new
    @grade = Grade.find(params[:grade_id])
    
    @subject = Subject.new
  end

  def create
    @grade = Grade.find(params[:grade_id])

    @subject = @grade.subjects.build(subject_params)

    if @subject.save
      redirect_to @grade
    else
      render :new
    end
  end
  
  def show
    @grade = Grade.find(params[:grade_id])
    @subject = @grade.subjects.find(params[:id])
  end

  def destroy
    @grade = Grade.find(params[:grade_id])
    @subject = @grade.subjects.find(params[:id])

    @subject.destroy
    redirect_to @grade, flash: {notice: "Subect deleted!"}
  end

  def edit
       @grade = Grade.find(params[:grade_id])
       @subject = @grade.subjects.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:grade_id])

     @subject = @grade.subjects.find(params[:id])

    if @subject.update(subject_params)
      redirect_to grades_path
    else
      render :edit
    end
  end


  private

    def subject_params
      params.require(:subject).permit!
    end
end
