![alt text](http://cdn0.trado.io/trado-promo/assets/img/cropped.png "Trado")

# MailChimp Module
Module for MailChimp newsletter subscription in the Trado Ecommerce platform. If you would like to get started using the Trado Ecommerce platform, head on over to the [Official site](http://www.trado.io/?utm_source=github&utm_medium=website&utm_campaign=trado)!

[Release notes](http://release.tomdallimore.com/projects/trado-mailchimp)

## Installation

Add module to your Gemfile:

```ruby
gem 'trado_mailchimp_module'
```

Then run bundle to install the Gem:

```sh
bundle install
```

Set up an initializer file with your MailChimp API keys:

```ruby
Gibbon::Request.api_key = "your_api_key"
Gibbon::Request.timeout = 15
```
e.g. *config/initializers/mailchimp.rb*. It would be a good idea to store sensitive data in *config/secrets.yml*.

Now generate migrations and assign model concerns:

```sh
rails generate trado_mailchimp_module:install
bundle exec rake db:migrate
```

Restart the main application server:

```sh
foreman start -f Procfile.dev
```

You can then modify the MailChimp List Id for your newsletter emails in the admin store settings.

## Upcoming Features

* List available lists from MailChimp in the Store settings administration
* Render newsletter signup form 

## Versioning

Trado PayPal module follows Semantic Versioning 2.0 as defined at
<http://semver.org>.

## How to contribute

* Fork the project
* Create your feature or bug fix
* Add the requried tests for it.
* Commit (do not change version or history)
* Send a pull request against the *development* branch

## Copyright
Copyright (c) 2016 [Tom Dallimore](http://www.tomdallimore.com/?utm_source=trado-mailchimp-module-github&utm_medium=website&utm_campaign=tomdallimore) ([@tom_dallimore](http://twitter.com/tom_dallimore))  
Licenced under the MIT licence.
