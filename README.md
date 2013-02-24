# Batch Webfont for Rails

Basic integration for the Batch Webfont Icons found here [http://adamwhitcroft.com/batch/](http://adamwhitcroft.com/batch/)

## Installation

Add this line to your application's Gemfile:

```
gem 'batch-rails2'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install batch-rails2
```

## Usage

add the following to your application.css

```
*= require 'batch'
```

and then in your markup

```
<i class="batch-*"></i>
```

where * stands for the name of the icon.

You can also override the prefix "batch-" with an initializer:

```
BatchRails2.setup do |config|
  config.prefix = "icon-"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
