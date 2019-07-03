class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.integer :lesson_id
      t.string :phrase

      t.timestamps
    end
  end
end
