#!/usr/bin/env ruby 

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

# Roll a 1 on a D6 alternative
def roll_one_alt
  puts "...........
:         :
:    *    :
:         :
'''''''''''
"
end

# Rolls a 2 on a D6 alternative
def roll_two_alt
  puts "...........
: *       :
:         :
:       * :
'''''''''''
"
end

# Rolls a 3 on a D6 alternative
def roll_three_alt
  puts "...........
: *       :
:    *    :
:       * :
'''''''''''
"
end

# Rolls a 4 on a D6 alternative
def roll_four_alt
  puts "...........
: *     * :
:         :
: *     * :
'''''''''''
"
end

# Rolls a 5 on a D6 alternative
def roll_five_alt
  puts "...........
: *     * :
:    *    :
: *     * :
'''''''''''
"
end

# Rolls a 6 on a D6 alternative
def roll_six_alt
  puts "...........
: *     * :
: *     * :
: *     * :
'''''''''''
"
end