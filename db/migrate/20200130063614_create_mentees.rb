class CreateMentees < ActiveRecord::Migration[5.2]
  def change
    create_table :mentees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_method
      t.string :contact_detail
      t.string :interest_field
      t.integer :experience_years
      t.text :description
      t.string :location
      t.string :linkedin

      t.timestamps
    end
  end
end
