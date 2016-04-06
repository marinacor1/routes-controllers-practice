class StudentsController < ApplicationController

  def index
    all_students = Student.pluck(:first_name).join(", ")
    render(text: "These are all of the students: #{all_students}. ")
  end

  def show
    all_students_addresses = Student.pluck(:first_name).join(", ")
    all_addresses = Address.pluck(:current).join(", ")
    render(text: "#{all_students_addresses} #{all_addresses}")
  end

end
