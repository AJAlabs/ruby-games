#!/usr/bin/env ruby 

# Copyright (c) 2012 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.2.1

# Load the library files for ASCII dice and colors
$LOAD_PATH << './lib'
require 'dice.rb'
require 'colorize.rb'

# Start the program
puts `clear`
puts 'Dice Roller - Let\'s roll some dice!'
puts ''
puts 'How many 6 sided dice do you want to roll?'.green
@dice = nil
@dice = gets.chomp

# Begins the dice validation
def dice_empty_validate
  while @dice.empty? do
    puts 'Number of dice not entered.'.red
    puts 'How many 6 sided dice do you want to roll?'.green
    @dice = nil
    @dice = gets.chomp
    dice_invalid_validate
  end
end

def dice_invalid_validate
  while @dice =~ /\D/ do
    puts 'Invalid character'.red
    puts 'Please specify the number of dice to roll (ie: 3)'.green
    @dice = nil
    @dice = gets.chomp
    dice_empty_validate
  end
end

dice_empty_validate
dice_invalid_validate

puts ''
puts "When you are ready to roll #{@dice}, 6 sided dice, press any key:"
waiting = gets.chomp 

puts 'Your Roll:'
puts ''

# Here is the magic behind the dice roller
dice_count = 1
total = 0
@dice = @dice.to_i
all_dice = []
while dice_count <= @dice
  roll = 1 + rand(6)
  case roll
    when 1
      roll_one
    when 2
      roll_two
    when 3
      roll_three
    when 4
      roll_four
    when 5
      roll_five
    when 6
      roll_six
  end
  all_dice << roll
  dice_count += 1
  total += roll.to_i
end

puts ''
# Display each dice in a numerical format.
# .join(', ') is the best solution for displaying a comma separated array without a trailing comma
print 'Your Roll'.underline + ': '
print all_dice.join(', ')

# Calculate the total sum of all dice
puts "\n\nTotal Score".underline + ': ' + "#{total}"
puts ''