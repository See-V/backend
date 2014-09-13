class CreateEducations < ActiveRecord::Migration
  def up
    create_table :educations do |t|
    	t.references profil
    	t.string :school_name
    	t.date :start_date
    	t.date :end_date
    	t.string :degree
    	t.string :field_of_study
    end
  end

  def down
  	drop_table :educations
  end
end
