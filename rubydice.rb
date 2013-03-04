#!/usr/bin/env ruby 

# Copyright (c) 2013 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.2.2

# Load the library files
$LOAD_PATH << './lib'
require 'colorize.rb'


# Receive input for number of sides to the dice
puts `clear`
puts 'RubyDice - Let\'s roll some dice!'
puts ''
puts 'How many sides should the dice have?'.green
@sides = nil
@sides = gets.chomp

# Begins the sides validation
def sides_empty_validate
  while @sides.empty? do
    puts 'No sides specified.'.red
    puts 'How many sides should the dice have?'.green
    @sides = nil
    @sides = gets.chomp
    sides_invalid_validate
  end
end

def sides_invalid_validate
  while @sides =~ /\D/ do
    puts 'Invalid character'.red
    puts 'Please specify the number of sides on each dice (ie: 3)'.green
    @sides = nil
    @sides = gets.chomp
    sides_empty_validate
  end
end

sides_empty_validate
sides_invalid_validate

# Receive input for the number of dice to roll
puts ''
puts "How many #{@sides} sided dice will you be rolling?".green
@dice = nil
@dice = gets.chomp

# Begins the dice validation
def dice_empty_validate
  while @dice.empty? do
    puts 'No dice specified.'.red
    puts "How many #{@sides} sided dice will you be rolling?".green
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
puts "When you are ready to roll #{@dice}, #{@sides} sided dice, press any key:"
waiting = gets.chomp

# Here is the magic behind the dice generator
puts 'Your Roll'.underline + ':'
dice_count = 1
total = 0
@sides = @sides.to_i
@dice = @dice.to_i

while dice_count <= @dice
  roll = 1 + rand(@sides)
  puts roll
  dice_count += 1
  total += roll.to_i
end

puts ''
# Calculate the total sum of all dice
puts 'Total Score'.underline + ': ' + "#{total}"
puts ''