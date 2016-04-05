class LastNames < ActiveRecord::Base
  attr_accessible :id, :last_name, :slug

  validates_presence_of :slug

  def to_param
    slug
  end

end
