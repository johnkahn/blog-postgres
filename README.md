* Ruby version

ruby 2.6.6p146 (2020-03-31 revision 67876) [x86_64-linux]

Rails 6.0.3.4

node version:  v14.15.4

yarn version:  1.22.5

psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))

* System dependencies
PostgreSQL is backend db

* Configuration

* Database creation
see Deployment instructions below

* Database initialization
see Deployment instructions below

* How to run the test suite
rake spec

* Services (job queues, cache servers, search engines, etc.)
none

* Deployment instructions


1. Install the PostgreSQL database server to the Ubuntu 20.04 using the apt command below.

sudo apt install postgresql postgresql-contrib libpq-dev -y

2. Start the PostgreSQL service and add it to the system boot.

sudo pg_ctlcluster 13 main start

OR

systemctl start postgresql
systemctl enable postgresql
>>>>>>> dev

3. Log in to the PostgreSQL shell

sudo -i -u postgres psql

4. Create a new role:

create role rails_user with createdb login password 'secretpassword';

To verify the PostgreSQL list of users, use the following:
\du

5. After github repository has been cloned to your local environment:
bundle install

6. Prepare the Database

rake db:setup

rake db:migrate

7. Deploy using Heroku Git

Download and install the Heroku CLI.

(If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.)

$ heroku login

In the terminal, create an app on Heroku:

$ heroku create

$ heroku git:remote -a <Name-of-heroku-app>

Push your code to Heroku:

$ git push heroku master   
(make sure you have a local master branch)

Migrate the database by running:

$ heroku run rake db:migrate

If you need to seed your database with data, run:

$ heroku run rake db:seed

Get the URL of your app and visit it in the browser:

$ heroku apps:info

In the output, copy the address in the Web URL field. Open a new tab in your browser, and visit your app.
