class AddSkillsToMentors < ActiveRecord::Migration[5.2]
  def change
    add_column :mentors, :skills, :text, array: true, default: []
  end
end
