class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
    	t.text :email
    	t.text :name
    	t.text :address
    	t.float :latitude
    	t.float :longitude
    	t.text :password_digest
      	t.timestamps null: false
    end
  end
end
