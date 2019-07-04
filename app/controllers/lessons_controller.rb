class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]
  def index
  end

  def show
  end
  def new
    @lesson=Lesson.new
  end

  private
  def set_lesson
    @lesson=Lesson.find(params[:id])
  end
end
