class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :date
      t.string :location

      t.timestamps null: false
    end
  end
end
