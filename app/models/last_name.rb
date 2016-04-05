class LastName < ActiveRecord::Base
  attr_accessible :id, :last_name

  def to_param
    "#{last_name}"
  end

end
