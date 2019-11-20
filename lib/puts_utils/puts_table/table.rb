# frozen_string_literal: true

module PutsUtils
  module PutsTable
    class Table
      def initialize(headers, data)
        @headers = headers || []
        @data = data || []
        @columns = {}
      end

      def rows
        @rows ||= [@headers] + @data
      end

      def column(index)
        key = index.to_s.to_sym
        return @columns[key] if @columns.key?(key)

        @columns[key] = rows.map { |r| r[index] }
      end
    end
  end
end
