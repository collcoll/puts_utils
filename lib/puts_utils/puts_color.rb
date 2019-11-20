# frozen_string_literal: true

module PutsUtils
  module PutsColor
    COLOR_CODES = {
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34
    }.freeze

    def puts_color(string, color = :blue)
      puts "\e[#{COLOR_CODES[color]}m#{string}\e[0m"
    end
  end
end
