class CreateFaqs < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
