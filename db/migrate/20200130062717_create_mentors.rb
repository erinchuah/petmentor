class CreateMentors < ActiveRecord::Migration[5.2]
  def change
    create_table :mentors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_method
      t.string :contact_detail
      t.string :title
      t.string :company
      t.string :field
      t.text :description
      t.string :location
      t.string :linkedin

      t.timestamps
    end
  end
end
