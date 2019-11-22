# PutsUtils

Prettier puts formatting for the lazy. Helpful utilities to puts in colour, tables and more.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'puts_utils'
```

And then execute:

    $ bundle 

Or install it yourself as:

    $ gem install puts_utils

## Usage

We can integrate it in our codebase by simply following the example below. 

1. Require `puts_utils` in your ruby file 
2. Include `PutsUtils::PutsColor` or `include PutsUtils::PutsTable`
3. Write readable code for your terminal 

``` 
    require 'puts_utils'
    
    desc 'test puts'
    task puts_testing: :environment do
      include PutsUtils::PutsColor
      include PutsUtils::PutsTable
    
      puts_color 'Danger.', :red
      puts_color 'Done.', :green
      puts_color 'Warning.', :yellow
      puts_color 'Something.', :blue
    
      puts_color_red 'Red'
      puts_color_purple 'Purple'
      puts_color_cyan 'Cyan'
      puts_color_grey 'Grey'
      puts_color_blue 'Blue'
      puts_color_yellow 'Yellow'
      puts_color_green 'Green'
    
      puts_table Array.new do
        [
          ['Header1','Header2','Header3'],
          ['Data_1','Data_2','Data_3']
        ]
      end
      puts_table Array.new do
        [
          ['Total:', '12h', nil],
          [nil, '34h', '(managed)']
        ]
      end
    end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
