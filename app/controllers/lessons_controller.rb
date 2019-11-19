class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
    @lesson = Lesson.new
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lesson_path(@lesson), notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @lesson.update(lesson_params)
    #redirect to
  end

  def destroy
    @lesson.destroy
    #redirect to
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:speciality, :price)
  end
end
