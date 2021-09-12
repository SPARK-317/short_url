class CreateShorts < ActiveRecord::Migration[6.1]
  def change
    create_table :shorts do |t|
      t.string :address
      t.integer :count
      t.references :long, null: false, foreign_key: true

      t.timestamps
    end
  end
end
