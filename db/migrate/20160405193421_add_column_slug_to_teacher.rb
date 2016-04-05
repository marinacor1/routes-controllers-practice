class AddColumnSlugToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :slug, :text
  end
end
