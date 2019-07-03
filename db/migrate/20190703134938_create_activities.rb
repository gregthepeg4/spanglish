class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :instruction
      t.integer :lesson_id

      t.timestamps
    end
  end
end
