# frozen_string_literal: true

module PutsUtils
  module PutsTable
    class Formatter
      attr_reader :table

      def initialize(table)
        @table = table
        @sizes = {}
      end

      def to_s
        table.rows.map do |values|
          render_row(values)
        end.join("\n")
      end

      private

      def render_row(values)
        (+'').tap do |result|
          values.each_with_index do |value, column|
            result << format("%-#{size_of_column(column)}s\t", value)
          end
        end
      end

      def size_of_column(index)
        key = index.to_s.to_sym
        return @sizes[key] if @sizes.key?(key)

        @sizes[key] = table.column(index)
                           .map(&:to_s)
                           .max_by(&:length)
                           .length
      end
    end
  end
end
