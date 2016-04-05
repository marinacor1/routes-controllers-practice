class Teacher < ActiveRecord::Base
  # validates_presence_of :slug
  before_save :parameterize_slug

  def to_param
    slug
  end

  def parameterize_slug
    self.slug = last_name.parameterize #built in method to make text appropriate for urls
  end
end
