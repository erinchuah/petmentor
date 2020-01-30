class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.text :review
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
