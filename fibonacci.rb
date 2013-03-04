#!/usr/bin/env ruby
 
# Copyright (c) 2012 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.0
 
# WORK IN PROGRESS
# This game is NOT functional or complete

# Load the library for colors
$LOAD_PATH << './lib'
require 'colorize.rb'


# TODO: Add in game help with -h or --help
puts `clear`
puts 'Fibonacci Sequence - Brain Game'
puts 'Test your cognitive abilities with this speed and accuracy test using the Fibonacci Sequence.'
puts 'To skip the intro type (s):'

# If the user types s, display the introduction to the Fibonacci Sequence 
intro = gets.chomp
puts `clear`
unless intro == 's' || intro == 'S' || intro == '(s)' || intro == '(S)';
  puts 'The Fibonacci Sequence are the numbers in the following integer sequence:'
  puts '0, 1, 1, 2, 3, 5, 8, , 13, 21, 34, 55, 89, 144, ...'
  puts 'By definition, the first two numbers in the Fibonacci sequence are 0 and 1 (alternatively, 1 and 1), and each subsequent number is the sum of the previous two.'
  puts ''
  # TODO: Insert instructions on how to play
end

###########################################################
## If there are difficulty levels, here is the initial logic
###########################################################
# puts 'Choose your difficulty:'
# puts '(e) Easy'
# puts '(m) Medium'
# puts '(h) Hard'
# puts '(g) Genius'
# difficulty = gets.chomp
# until difficulty == 'e' || difficulty == 'm' || difficulty == 'h' || difficulty == 'g' do
#   puts ''
#   puts 'You did not specify a difficulty level. Choose your difficulty:'
#   puts '(e) Easy'
#   puts '(m) Medium'
#   puts '(h) Hard'
#   puts '(g) Genius'
#   difficulty = gets.chomp
# end


# TODO: Insert Fibonacci variables
a = 0
b = 1
c = a + b

# Start the game - Start the clock!
puts 'When you are ready to begin, press Enter:'
waiting = gets.chomp
