class StudentsController < ApplicationController

  def index
    all_students = Student.pluck(:first_name).join(", ")
    render(text: "These are all of the students: #{all_students}. ")
  end

  def show
    # render(text: "#{params["id"]}")
    # params = {"controller"=>"students", "action"=>"show", "id"=>"3"}
    correct_student = Student.find_by(id: params["id"])
    first_name = correct_student.first_name
    correct_current_address = correct_student.addresses.map {|a| a.current}
    correct_permanent_address = correct_student.addresses.map {|a| a.permanent}
    render(text: "#{first_name}:" "#{correct_current_address}" "#{correct_permanent_address}")
  end

end
