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

    def puts_color_red(*strings)
      strings.each do |string|
        puts "\e[0;31m" + string + "\e[0m"
      end
    end

    def puts_color_green(*strings)
      strings.each do |string|
        puts "\e[0;32m" + string + "\e[0m"
      end
    end

    def puts_color_yellow(*strings)
      strings.each do |string|
        puts "\e[0;33m" + string + "\e[0m"
      end
    end

    def puts_color_blue(*strings)
      strings.each do |string|
        puts "\e[0;34m" + string + "\e[0m"
      end
    end

    def puts_color_purple(*strings)
      strings.each do |string|
        puts "\e[0;35m" + string + "\e[0m"
      end
    end

    def puts_color_cyan(*strings)
      strings.each do |string|
        puts "\e[0;36m" + string + "\e[0m"
      end
    end

    def puts_color_grey(*strings)
      strings.each do |string|
        puts "\e[0;37m" + string + "\e[0m"
      end
    end
  end
end
