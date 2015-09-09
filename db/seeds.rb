# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # create_table :jobseekers do |t|
  #     t.text :email
  #   	t.text :name
  #   	t.text :address
  #   	t.text :password_digest
  #     t.timestamps null: false

Jobseeker.destroy_all
js1 = Jobseeker.create :email => "frednile@frednile.com",
						:name => "Fred Nile",
						:address => "23 Plesent Place\nArtarmon",
						:password => "chicken"
js2 = Jobseeker.create :email => "andysmith@gmail.com",
						:name => "Andy Smith",
						:address => "23 Plesent Place\nArtarmon",
						:password => "chicken"


  #   create_table :employers do |t|
  #   	t.text :email
  #   	t.text :name
  #   	t.text :address
  #   	t.text :password_digest
  #     t.timestamps null: false

Employer.destroy_all
e1 = Employer.create :email => "maccas@maccas.com",
						:name => "MC Donalds",
						:address => "100 Mac Road\nMc Town",
						:password => "chicken"
e2 = Employer.create :email => "stooge@ibm.com",
						:name => "IBM",
						:address => "34 The Loop\nBlacktown",
						:password => "chicken"


  # create_table :jobs do |t|
  #   	t.text :title
  #   	t.text :location
  #   	t.float :salary
  #   	t.text :industry
  #   	t.text :description
  #   	t.date :closing_date
  #     t.integer :employer_id
  #     t.timestamps null: false

 Job.destroy_all
 j1 = Job.create :title => "Fry Cook", :location => "East Sydney",
 				 :salary => 20000,  :industry => "Food",
 				 :description => "A Fry cook is required to cook burgers and fries from 6am to midnight. Monday to Saturday",
 				 :closing_date => "14/10/2015"


  # create_table :appls do |t|
  #   	t.text :resume
  #   	t.text :cover_letter
  #   	t.integer :job_id
  #   	t.integer :jobseeker_id
  #   	t.text :resume
  #     t.timestamps null: false

  Appl.destroy_all
  a1 = Appl.create :cover_letter => "I think I'll really fit in well"

  e1.jobs << j1

  j1.appls << a1

  js1.appls << a1




