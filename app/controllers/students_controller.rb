class StudentsController < ApplicationController

  def index
    all_students = Student.pluck(:first_name).join(", ")
    render(text: "These are all of the students: #{all_students}. ")
  end

  def show
    correct_student = Student.find_by(id: params["id"])
    first_name = correct_student.first_name
    current_addresses = correct_student.addresses.map {|a| a.current}
    permanent_addresses = correct_student.addresses.map {|a| a.permanent}
    render(text: "#{first_name}:" "#{current_addresses}" "#{permanent_addresses}")
  end

end
