class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.boolean :completed, default: false
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end