# frozen_string_literal: true

module PutsUtils
  module PutsPrompt
    # rubocop: disable Metrics/CyclomaticComplexity
    # rubocop: disable Metrics/MethodLength
    def puts_prompt(question, required: false, default: nil)
      tries = 1
      loop do
        STDOUT.print question
        answer = STDIN.gets.strip
        return answer if answer.present?
        return default if answer.empty? && required == false
        raise 'Value is required' if answer.empty? && required && tries == 3

        puts 'Sorry, this is required – please try again'
        tries += 1
        next
      end
    end
    # rubocop: enable Metrics/CyclomaticComplexity
    # rubocop: enable Metrics/MethodLength
  end
end
