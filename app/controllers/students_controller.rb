class StudentsController < ApplicationController

  def index
    all_students = Student.pluck(:first_name).join(",")
    render(text: "These are all of the students: #{all_students}. ")
  end

end
