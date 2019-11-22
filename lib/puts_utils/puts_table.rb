# frozen_string_literal: true

require 'puts_utils/puts_table/formatter'
require 'puts_utils/puts_table/table'

module PutsUtils
  module PutsTable
    def puts_table(headers = nil, data = nil)
      data = yield if block_given?
      table = Table.new(headers, data)
      puts Formatter.new(table).to_s
    end
  end
end
