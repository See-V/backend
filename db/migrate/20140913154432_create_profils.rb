class CreateProfils < ActiveRecord::Migration
  def up
    create_table :profils do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :headline
    	t.string :description
    	t.string :phone
    	t.string :address
    	t.string :location
    end
    add_index :profils, :id
  end
  def down
  	drop_table :profils
  end
end
