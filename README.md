# OOP With Ruby
Practice examples of Ruby using OOP paradigm using Odin Project

I also have a fork of a ruber exercise file here as well.

## Running Ruby Code:
```ruby
ruby rubyFileName.rb
```

## Notes:
* Rube is STRONGLY OOP Language == Everything is an object, even basic data types

* Links to how I get started:

node for backend JS
```bash
https://nodejs.org/en/download/prebuilt-installer
```
Git for version control
```bash
https://git-scm.com/downloads
```

Ruby
```bash
https://rubyinstaller.org/
```

Ruby on Rails the Ruby Framework
```bash
https://railsinstaller.dev/
```

I did the above in that order
Then I did:

```bash
cd projecstDir
rails new projectNameDir ; cd projectNameDir ; 
rails s
```

Creating stuff using generator
```ruby
rails g controller home index
```
The above code makes a controller, a home directory, and an index.erb

You can do this manually by: 
* going to config and making a route in route.rb
* going to views and making a directory
* going to controller dir to make a file too

If you don't know css that well boot strap is an option:

## Ruby Specific Notes:
* One class per file, and each file in a lib directory
* Bundler is important to get everyone on same page, it's like npm install...

* This command is powerful:
```ruby
bundle exec rubocop -a
```

Screw it just ref this:
https://www.theodinproject.com/lessons/ruby-on-rails-installing-rails

```
rails generate scaffold car make:string model:string year:integer
rails db:migrate

```