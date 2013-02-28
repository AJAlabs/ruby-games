#!/usr/bin/env ruby 

# Copyright (c) 2012 AJ Acevedo | http://ajacevedo.com
# This content is released under the MIT License.
# http://www.opensource.org/licenses/mit-license.php
# Version: 0.2

# Defining the ASCII dice
# Rolls a 1 on a D6 Dice
def roll_one
puts %Q{...........}
puts %Q{:         :}
puts %Q{:    *    :}
puts %Q{:         :}
puts %Q{'''''''''''}
end

# Rolls a 2 on a D6 Dice
def roll_two
puts %Q{...........}
puts %Q{: *       :}
puts %Q{:         :}
puts %Q{:       * :}
puts %Q{'''''''''''}
end

# Rolls a 3 on a D6 Dice
def roll_three
puts %Q{...........}
puts %Q{: *       :}
puts %Q{:    *    :}
puts %Q{:       * :}
puts %Q{'''''''''''}
end

# Rolls a 4 on a D6 Dice
def roll_four
puts %Q{...........}
puts %Q{: *     * :}
puts %Q{:         :}
puts %Q{: *     * :}
puts %Q{'''''''''''}
end

# Rolls a 5 on a D6 Dice
def roll_five
puts %Q{...........}
puts %Q{: *     * :}
puts %Q{:    *    :}
puts %Q{: *     * :}
puts %Q{'''''''''''}
end

# Rolls a 6 on a D6 Dice
def roll_six
puts %Q{...........}
puts %Q{: *     * :}
puts %Q{: *     * :}
puts %Q{: *     * :}
puts %Q{'''''''''''}
end

#####################
# Start the program #
#####################

puts `clear`
puts 'Dice Roller - Let\'s roll some dice!'
puts 'How many 6 sided dice do you want to roll?'
dice = gets.chomp
while dice.empty? do
  puts 'Number of dice not entered.'
  puts 'How many 6 sided dice do you want to roll?'
  dice = gets.chomp
end

while dice =~ /\D/ do
  puts 'Invalid character'
  puts 'Please specify the number of dice to roll (ie: 3)'
  dice = gets.chomp
end
puts ''
puts "When you are ready to roll #{dice}, 6 sided dice, press Enter."
waiting = gets.chomp 

puts 'Your Roll:'
puts ''

dice_count = 1
total = 0
sides = 6
dice = dice.to_i
while dice_count <= dice
  roll = 1 + rand(sides)
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
  dice_count += 1
  total += roll.to_i
end

puts ''
# Calculate the total sum of all dice
puts "Total Score: #{total}"
puts ''