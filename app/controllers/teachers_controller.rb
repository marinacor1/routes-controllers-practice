class TeachersController < ApplicationController

  def index
    render(text: "You've hit the teachers index page.")
  end

  def show
    render(text: "This is one teacher.")
  end

end
