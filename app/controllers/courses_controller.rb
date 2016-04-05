class CoursesController < ApplicationController

  def index
    render(text: "You've hit the courses index page.")
  end

  def new
    render(text: "You've hit the courses new page.")
  end

  def create
    render(text: "You've hit the courses create page.")
  end

  def show
    render(text: "You've hit the courses show page.")
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
