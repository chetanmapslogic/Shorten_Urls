# Shortened URL application

1. Clone application as new project with original repository named "Shorten_Urls".

	 - git clone https://github.com/chetanmapslogic/Shorten_Urls.git

2. Go to original repository name "Shorten_Urls"

	 - cd Shorten_Urls

3. Install gems and dependencies using bundle

	 - bundle install

4. Create databse

	 - rake db:create

5. Creates tables in the database

	 - rake db:migrate

6. Creates records in the tables based on seed data

	 - rake db:seed

7. Start your rails server

	 - rails server