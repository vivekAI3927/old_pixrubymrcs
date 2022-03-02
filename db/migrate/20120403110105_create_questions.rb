class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :position
      t.integer :station_id

      t.timestamps
    end
  end
end
