class AddPhotoToMentees < ActiveRecord::Migration[5.2]
  def change
    add_column :mentees, :photo, :string
  end
end
