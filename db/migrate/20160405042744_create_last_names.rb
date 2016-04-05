class CreateLastNames < ActiveRecord::Migration
  def change
    create_table :last_names do |t|
      t.string :last_name
    end
  end
end
