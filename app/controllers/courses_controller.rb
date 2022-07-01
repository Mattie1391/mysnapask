class CoursesController < ApplicationController
  before_action :find_course, only: [:index, :edit, :update, :destroy, :show]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path, notice: "新增課程成功!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path, notice: "課程更新成功!"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy if @course
    redirect_to courses_path, notice: "課程資料已刪除!"
  end

  def show
  end

  def mycourses
    @courses = Course.all
  end

  def purchasing
    @courses = Course.all
    if !current_user.purchased.include?(@course.id) || current_user.purchased.empty?
      current_user.update(purchased: (current_user.purchased << @course.id))
      redirect_to courses_path, notice: "課程購買成功!"
    end 
  end

  private
  def course_params
    params.require(:course).permit(:name, :price, :description, :url, :duration, :status, :created_at, :updated_at)
  end

  def find_course
    @course = Course.friendly.find(params[:id])
  end
end
