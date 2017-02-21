# ComfySolidusAuth
Do you want to make a customizable website with a store, but you don't necessarily want them to be the same thing? Well, you've come to the right repository!

This gem allows you to run Comfortable Mexican Sofa and Solidus (possibly Spree as well) together, with the former using the latter's authentication system. Store administrators will automatically be able to access the CMS, and anyone else will be told why they can't.

It also features friendly forwarding!

## Usage
Once properly installed, this plugin should work to its fullest capacity.

## Installation

Make sure you have both Solidus and Comfy Mexican Sofa installed, 
with both mounted at different locations. 
(For example, CMS at '/' and Solidus at '/store')

Add this line to your application's Gemfile:

```ruby
gem 'comfy_solidus_auth'
```

And then execute:
```bash
$ bundle
$ rails g comfy_solidus_auth:install
```

## Future plans

* I think a nice "logout" button in the CMS would be useful, but it's not really necessary and I'm not sure how feasible it is from a gem. For now, users can just add their own.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
