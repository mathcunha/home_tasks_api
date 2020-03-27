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

## Replay
rails new home_tasks_api -d postgresql -T --api
rails g scaffold Home name:string link:string image:string
rails g scaffold Task title:string daily:boolean hour:time home:references
rails g scaffold Person name:string email:string photo:string
rails g scaffold Todo task:references person:references done:boolean when:timestamp due:timestamp
rails g model Group home:references person:references enabled:boolean
