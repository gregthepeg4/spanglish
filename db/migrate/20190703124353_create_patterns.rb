class CreatePatterns < ActiveRecord::Migration[6.0]
  def change
    create_table :patterns do |t|
      t.integer :lesson_id
      t.string :sequence

      t.timestamps
    end
  end
end
