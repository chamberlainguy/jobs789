class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.text :title
    	t.text :location
    	t.float :salary
    	t.text :industry
    	t.text :description
    	t.date :closing_date
      t.integer :employer_id
      	t.timestamps null: false
    end
  end
end
