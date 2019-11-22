# frozen_string_literal: true

module PutsUtils
  module PutsColor
    COLOR_CODES = {
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34,
      purple: 35,
      cyan: 36,
      gray: 37
    }.freeze

    def puts_color(string, color = :gray)
      puts "\e[#{COLOR_CODES[color]}m#{string}\e[0m"
    end

    COLOR_CODES.keys.each do |color|
      define_method "puts_color_#{color}" do |string|
        puts_color string, color
      end
    end
  end
end
