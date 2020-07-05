# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Some Important commands to memo

- rails new stills
- rails g scaffold photos title:string description:text image_file_name:string image_content_type:string image_file_size:integer author:string
- rails db:migrate
- rails routes
- rails g scaffold photo_attachment photo_id:integer avatar:string

- brew install imagemagick

- yarn add bootstrap jquery popper.js

- rails generate migration AddUsernameToUsers username:string

- brew install imagemagick


- rails active_storage:install
- rails c
- 2.7.1 :007 > ActiveRecord::Migration.remove_column :photos, :image_file_name
- Rails:db:migrate

# Comments:
- Use of helper function
- https://apidock.com/ruby/Array/each_index 