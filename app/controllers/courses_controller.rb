class CoursesController < ApplicationController
  before_action :find_course, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      # 成功
      redirect_to courses_path, notice: "新增課程成功!"
    else
      # 失敗
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      # 成功
      redirect_to courses_path, notice: "資料更新成功!"
    else
      # 失敗
      render :edit
    end
  end

  def destroy
    @course.destroy if @course
    redirect_to courses_path, notice: "課程資料已刪除!"
  end

  private
  def course_params
    params.require(:course).permit(:name, :price, :description, :url, :duration, :status, :created_at, :updated_at)
  end

  def find_course
    @course = Course.find_by(id: params[:id])
  end
end
