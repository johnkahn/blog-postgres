* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

go to primer on installing ubuntu-postgres

create user role
turn on postgres server
bundle install
rake db:setup
...
...some messages...
...
rake db:migrate

# commit to local repository

 $ git add .
 $ git commit -m "text"


Deploy using Heroku Git
Use git in the command line or a GUI tool to deploy this app.

Download and install the Heroku CLI.

If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.

$ heroku login

In the terminal, create an app on Heroku:

 $ heroku create

$heroku git:remote -a <Name-of-heroku-app>

Push your code to Heroku:

$ git push heroku master   #make sure you have a local master branch

If you are using the database in your application, migrate the database by running:

$ heroku run rake db:migrate

If you need to seed your database with data, run:

$ heroku run rake db:seed

Get the URL of your app and visit it in the browser:

$ heroku apps:info

In the output, copy the address in the Web URL field. Open a new tab in your browser, and visit your app.
