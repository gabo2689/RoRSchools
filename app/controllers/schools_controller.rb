class SchoolsController < ApplicationController


  def index
    @school = School.order('name');
  end

  def new
    @school = School.new
  end

  def edit

    @school = School.find(params[:id])

  end


  def create
    @school = School.new(school_params)


    if @school.save
      redirect_to schools_path , flash: {notice: "School created successfully!"}
    else
      render :new
    end

  end

  def show
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to schools_path , flash: {notice: "School updated successfully!"}
    else
      render :edit
    end

  end

  def destroy
    @school = School.find(params[:id])
    if @school.destroy
      redirect_to schools_path , flash: {notice: "School deleted successfully!"}
    end


  end


  private

  def school_params
    params.require(:school).permit!
  end


end
