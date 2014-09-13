class CreateSkills < ActiveRecord::Migration
  def up
    create_table :skills do |t|
    	t.references :profil
    	t.string :skill_name
    	t.string :level
    end
    add_index :skills, :profil_id
  end
  def down
  	drop_table :skills
  end
end
