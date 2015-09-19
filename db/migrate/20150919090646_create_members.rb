class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :good
      t.integer :nomal
      t.integer :bad

      t.timestamps null: false
    end
  end
end
