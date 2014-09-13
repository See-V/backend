class CreateSkills < ActiveRecord::Migration
  def up
    create_table :skills do |t|
    	t.references profil
    	t.string :skill_name
    	t.string :level
    end
  end
  def down
  	drop_table :skills
  end
end
