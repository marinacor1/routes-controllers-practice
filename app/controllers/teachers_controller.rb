class TeacherController < ApplicationController

  def index
    render(text: "You've hit the teacher's index page.")
  end

  def show
    render(text: "This is one teacher.")
  end

end
