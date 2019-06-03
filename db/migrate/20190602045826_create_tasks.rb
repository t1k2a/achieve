class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.datetime :deadline
      t.integer :charge_id
      t.boolean :done
      t.integer :status

      t.timestamps
    end
  end
end
