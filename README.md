# PutsUtils

Prettier puts formatting for the lazy. Helpful utilities to puts in colour, tables and more.


## Installation

Add the following line to your application's Gemfile:

```ruby
gem 'puts_utils'
```

And then execute:

    $ bundle 

Or install it yourself as:

    $ gem install puts_utils

## Usage

```ruby 
require 'puts_utils'

desc 'PutsUtils demo rake task'
task puts_utils_demo: do

  #
  # Include any of the PutsUtils modules you'd like
  #

  include PutsUtils::PutsColor
  include PutsUtils::PutsTable
  include PutsUtils::PutsPrompt

  #
  # Use puts_color to puts in various colors
  #

  puts_color 'Danger.', :red
  puts_color 'Done.', :green
  puts_color 'Warning.', :yellow
  puts_color 'Something.', :blue

  #
  # puts_color shorthand methods also available
  #

  puts_color_red 'Red'
  puts_color_purple 'Purple'
  puts_color_cyan 'Cyan'
  puts_color_gray 'Grey'
  puts_color_blue 'Blue'
  puts_color_yellow 'Yellow'
  puts_color_green 'Green'
  
  #
  # Use puts_prompt to ask for inputs
  #
  
  color = puts_prompt "What's your favourite colour?: ", required: true
  
  puts_color "You answered '#{color}'!", color.to_sym

  #
  # Use puts_table to display tabular data
  #
  
  puts_table %w[Color Code] do
    PutsUtils::PutsColor::COLOR_CODES.map do |color, code|
      [color, code]
    end
  end
end

```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct	

Everyone interacting in the PutsUtils project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/puts_utils/blob/master/CODE_OF_CONDUCT.md).
