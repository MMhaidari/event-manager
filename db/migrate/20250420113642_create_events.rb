class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end