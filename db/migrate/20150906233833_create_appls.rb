class CreateAppls < ActiveRecord::Migration
  def change
    create_table :appls do |t|
    	t.text :resume
    	t.text :cover_letter
    	t.integer :job_id
    	t.integer :jobseeker_id
    	t.text :resume
      t.timestamps null: false
    end
  end
end
