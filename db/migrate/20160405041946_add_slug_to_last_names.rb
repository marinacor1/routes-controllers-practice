class AddSlugToLastNames < ActiveRecord::Migration
  def change
    add_column :last_names, :slug, :string
  end
end
