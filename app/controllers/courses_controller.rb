class CoursesController < ApplicationController

  def index
    all_courses = Course.pluck(:name).join(", ")
    render(text: "#{all_courses}")
  end

  def new
    render(text: "You've hit the courses new page.")
  end

  def create
    render(text: "You've hit the courses create page.")
  end

  def show
    correct_course = Course.find_by(id: params["id"])
    students = correct_course.students
    render(text: "#{correct_course}")
  end

  def edit
    render(text: "You've hit the courses edit page.")
  end

  def update
    render(text: "You've hit the courses update page.")
  end

  def destroy
    render(text: "You've hit the courses index page.")
  end
end
