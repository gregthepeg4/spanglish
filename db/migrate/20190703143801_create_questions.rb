class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :translation
      t.string :answer
      t.string :options
      t.references :questionable, polymorphic: true, index:true
      t.timestamps
    end
  end
end
