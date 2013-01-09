# Torquebox::Mailer

Easily send emails in the background using TorqueBox Backgroundable and ActionMailer

## Installation

Add this line to your application's Gemfile:

    gem 'torquebox-mailer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install torquebox-mailer

## Usage

Use `delay` to deliver your emails asynchronously.

```ruby
UserMailer.delay.welcome_email(@user.to_param)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

TorqueBox::Mailer is a port of the delayed extension for ActionMailer included with [Sidekiq](https://github.com/mperham/sidekiq) by Mike Perham, [@mperham](https://twitter.com/mperham), [http://mikeperham.com](http://mikeperham.com)

## Maintainers

* [Morton Jonuschat](https://github.com/yabawock)

## License

Please see LICENSE for licensing details.

## Copyright

Copyright 2013 Morton Jonuschat
Parts Copyright 2012-2013 Mike Perham