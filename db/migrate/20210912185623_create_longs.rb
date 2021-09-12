class CreateLongs < ActiveRecord::Migration[6.1]
  def change
    create_table :longs do |t|
      t.string :address
      t.integer :count

      t.timestamps
    end
  end
end
