# frozen_string_literal: true
require "readline.rb"

loop do
  line = Readline.readline("> ")
  Readline::HISTORY.push(line)
  puts "You typed: #{line}"

  exit if line =~ /exit|quit/
end
