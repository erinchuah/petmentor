class AddAvgratingToMentors < ActiveRecord::Migration[5.2]
  def change
    add_column :mentors, :avg_rating, :float
  end
end
