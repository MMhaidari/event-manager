class CreateVenues < ActiveRecord::Migration[8.0]
  def change
    create_table :venues do |t|
      t.string :name, null: false
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.integer :capacity

      t.timestamps
    end
  end
end