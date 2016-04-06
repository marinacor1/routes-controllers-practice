class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.text :number
      t.text :month

      t.timestamps null: false
    end
  end
end
