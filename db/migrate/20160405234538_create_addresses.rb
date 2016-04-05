class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :current
      t.text :permanent

      t.timestamps null: false
    end
  end
end
