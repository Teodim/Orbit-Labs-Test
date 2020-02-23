class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.decimal :lat, precision: 8, scale: 6
      t.decimal :lng, precision: 9, scale: 6

      t.timestamps
    end
  end
end
