#!/usr/bin/env ruby 

# Copyright (c) 2012 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.2


# Choose how many dice to roll
puts `clear`
puts 'RubyDice - Let\'s roll some dice!'
puts 'How many sides should the dice have?'
sides = gets.chomp
while sides.empty? do
  puts 'No sides specified.'
  puts 'How many sides should the dice have?'
  sides = gets.chomp
end
while sides =~ /\D/ do
  puts 'Invalid character'
  puts 'Please specify the number of sides on each dice (ie: 3)'
  sides = gets.chomp
end
puts ''
puts 'How many ' + sides + ' sided dice will you be rolling?'
dice = gets.chomp
while dice.empty? do
  puts 'No dice specified.'
  puts 'How many ' + sides + ' sided dice will you be rolling?'
  dice = gets.chomp
end
while dice =~ /\D/ do
  puts 'Invalid character'
  puts 'Please specify the number of dice to roll (ie: 3)'
  dice = gets.chomp
end

puts ''
puts "When you are ready to roll #{dice}, #{sides} sided dice, press Enter."
waiting = gets.chomp # Just a placeholder until I find a better way to wait for user input.

puts 'Your roll:'
dice_count = 1
total = 0
sides = sides.to_i
dice = dice.to_i
while dice_count <= dice
  roll = 1 + rand(sides)
  puts roll
  dice_count += 1
  total += roll.to_i
end

puts ''
# Calculate the total sum of all dice
puts "Total Score: #{total}"
puts ''
