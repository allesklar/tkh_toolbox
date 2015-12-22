# TkhToolbox

This gem is part of the tkh_cms gem suite. In here we put lots of smallish utilities which can be used by different gems across the suite.

## Installation

For Rails 4.0.0 and above add this line to your application's Gemfile:

    gem 'tkh_toolbox', '~> 0.13'

For prior versions of Rails, use this:

    gem 'tkh_toolbox', '< 0.9'

And then execute:

    $ bundle

Run the following command:

		$ rake tkh_toolbox:install


## Usage

There are general purpose locale files. Look for them in the config/locales folder.

A flash view partial can be called at app/views/shared/_flash_messages.html.erb

A human_date_and_time(datetime_object) application extension gives the following date outputs depending when they happened in relation to today. Examples:

  * when less than 15 seconds then "just now"
  * when less than 5 minutes then "a few minutes ago"
  * when today then "at 02:18 pm"
  * when yesterday then "yesterday at 02:03 pm"
  * when this week then "Wednesday at 11:48 am"
  * when this year then  "Jul. 23 at 02:12 pm"
  * when last year and earlier then "Aug. 23, 2013"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
