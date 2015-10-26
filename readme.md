# Cutes extension for Refinery CMS.


Cut-e engine for Refinery CMS allows you to manage multiple packages connection for the cut-e company :

Requirements

This version of refinerycms-teams supports Refinery 3.x and Rails 4.x.

Refinery CMS version 3.0.0 or above.

Install

Open up your Gemfile and add at the bottom this line:

gem 'refinerycms-cute', github: 'dreamjer/refinerycms-cute', branch: 'master'

Now, run bundle install

Next, to install the jobs plugin run:

rails generate refinery:cute

Run database migrations:

rake db:migrate

Finally seed your database and you're done.

rake db:seed
