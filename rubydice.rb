#!/usr/bin/env ruby 

# Copyright (c) 2012 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.1


# Choose how many dice to roll
puts 'RubyDice'
puts "How many sides should the dice have?"
sides = gets.chomp
puts ''
puts 'How many ' + sides + ' sided dice will you be rolling?'
dice = gets.chomp
puts 'When you are ready to roll ' + dice + ', ' + sides + ' sided dice, press Enter.'
waiting = gets.chomp # Just a placehoder until I find a better way to wait for user input.
puts ''
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
#Calculate the total sum of all dice
puts 'Total Score: ' + total.to_s 
puts ''
