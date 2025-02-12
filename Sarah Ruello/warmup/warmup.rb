###########################################################################
############################## Warmup 12/10 ###############################
# # Is this a triangle? 
# ### Task:
# Implement a function that accepts 3 integer values a, b, c. The function should return 
# true if a triangle can be built with the sides of given length and false in any other case.

# ### Examples
#   is_triangle(1,2,2) #true
#   is_triangle(5,1,2) #false
#   is_triangle(4,2,3) #true

# ## Bonus
# Make it pretty and create a menu that will allow for user input

# def is_triangle(a, b, c)

#     max = [a, b, c].max #find max value in array
#     sum = a + b + c
#     puts sum - max > max

      # OR:
#     # puts "Enter side A: "
#     # a = gets.to_i
#     # puts "Enter side B: "
#     # b = gets.to_i
#     # puts "Enter side C: "
#     # c = gets.to_i
#     # if a + b > c && a + c > b && b + c > a
#     #     puts "You have a triangle!"
#     # else
#     #     puts "This is not a triangle..."
#     # end
# end 

#   is_triangle(1,2,2) #true
#   is_triangle(5,1,2) #false
#   is_triangle(4,2,3) #true
    
###########################################################################
############################## Warmup 13/10 ###############################

# Warmup - Raindrops
# Write a program using Ruby that will take a number (eg 28 or 1755 or 9, etc) 
# and output the following:
# If the number contains 3 as a factor, output 'Pling'.
# If the number contains 5 as a factor, output 'Plang'.
# If the number contains 7 as a factor, output 'Plong'.
# If the number does not contain 3, 5, or 7 as a factor, output the number as a string.
# Examples
# 28 has 7 as a factor. In raindrop-speak, this would be a simple "Plong".
# 1755 has 3 and 5 as factors. In raindrop-speak, this would be a "PlingPlang".
# 34 has neither 3, 5 nor 7 as a factor. Raindrop-speak doesn't know what to make of 
# that, so it just goes with the straightforward "34".


# def raindrops(num)
#   string = ""
#   if num % 3 == 0
#    string += "Pling"
#   end
#   if
#     num % 5 == 0
#     string += "Plang"
#   end
#   if    
#     num % 7 == 0
#     string += 'Plong'
#   end
#   if string.length != 0
#     puts string 
#   else 
#     puts num.to_s 
#   end
# end 

# raindrops(28)
# raindrops(1755)
# raindrops(34)
  
###########################################################################
############################## Warmup 14/10 ###############################

# DNA is represented by an alphabet of the following symbols: 'A', 'C', 'G', and 'T'.

# Each symbol represents a nucleotide, which is a fancy name for the particular molecules
# that happen to make up a large part of DNA.

# Write a program in ruby that will tell you how many times each nucleotide occurs in a 
# string (i.e. how many times 'A', 'C', 'G' and 'T' appear in a given string).

# It should also tell you if a character in the string is not a valid nucleotide (i.e. 
# NOT 'A', 'C', 'G', and 'T').

# Example:

# ```
# count_nucleotides "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
# # output:
# A: 20
# C: 12
# G: 17
# T: 21
# ```

# def count_nucleotides(string)

#   nucleotides = {
#   'A' => 0,

#   'error' => 0
# }

# string.each_char do |char|
#   if nucleotides.keys.include? char 
#     nucleotides[char] += 1
#   else 
#   nucleotides['error'] += 1
# end     

# puts nucleotides
# nucleotides.map {|k, v| puts "#{k}: #{v}"

#   # puts "A: #{string.count('A')}"
#   # puts "C: #{string.count('C')}"
#   # puts "G: #{string.count('G')}"
#   # puts "T: #{string.count('T')}"
  
# end  




# count_nucleotides "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

###########################################################################
############################## Warmup 15/10 ###############################
# # Scrabble Score

# Write a RUBY program that, given a word, computes the scrabble score for that word.

# ```ruby
# scrabble('cabbage');
# // => 14
# scrabble('cabbage'); // with b doubled, g tripled and a double word
# // => 48
# ```

# ## Letter Values

# ```plain
# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# ```

# ## Extensions

# - You can play a `:double` or a `:triple` letter.
# - You can play a `:double` or a `:triple` word.


#   def scrabble(string)
#       points = {
#   	"a" => 1,
#   	"e" => 1,
#   	"i" => 1,
#   	"o" => 1,
#   	"u" => 1,
#   	"l" => 1,
#   	"n" => 1,
#   	"r" => 1,
#   	"s" => 1,
#   	"t" => 1,
#   	"d" => 2,
#   	"g" => 2,
#   	"b" => 3,
#   	"c" => 3,
#   	"m" => 3,
#   	"p" => 3,
#   	"f" => 4,
#   	"h" => 4,
#   	"v" => 4,
#   	"w" => 4,
#   	"y" => 4,
#   	"k" => 5,
#   	"j" => 8,
#   	"x" => 8,
#   	"q" => 10,
#   	"z" => 10,
#   }

#   score = 0

#   points[double] *= 2 unless double == ''

#   string.each_char do |i|
#       score += points[i]
#     end

#   puts "Your score is: #{score}"

#   end
  
#   scrabble('cabbage');
#   scrabble('expulsion');

###########################################################################
############################## Warmup 15/10 ###############################

#   # Robot Factory 🤖
# You run a robot factory. As robots are created, they roll off the conveyor belt as empty, mindless husks of machinery -- until you first boot them up.
# The first time you boot them up, a random name is randomly generated, and assigned to itself by the robot.
# Names typically take the format of things like "BX777" or "SD234".
# For instance:
# ```rb
# robot1 = Robot.new
# puts robot1.name
# => "BX777"
# robot2 = Robot.new
# puts robot2.name
# => "SD234"
# puts robot2.name
# => "SD234"
# ```
# Every once in a while we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it gives a new name.
# if I say:
# ```rb
# robot3 = Robot.new
# puts robot3.name
# => "RF629"
# robot3.reset
# puts robot3.name
# => "ZC532"
# ```
# ## Extensions 🧯
# ### Counters 🔢
# It's important that we not overwork our robots. While resetting to factory defaults is great, the wear and tear on the robot mechanisms doesn't go away.
# For every action our robot takes, we should keep track of it.
# ```rb
# robot3 = Robot.new
# puts robot3.name
# puts robot3.name
# robot3.reset
# puts robot3.name
# puts robot3.name
# puts robot3.instruction_count
# => 5
# ```
# ### Robot Time ⌚️
# Number of instructions is important, but so is the total age of the robot.
# ```rb
# robot3 = Robot.new
# puts robot3.timers
# => "21 seconds since last boot, 21 seconds since creation"
# robot3.reset
# puts robot3.timers
# => "8 seconds since last boot, 29 seconds since creation"
# ``

require 'pry'

class Robot 
	attr_reader :instruction_count

    def initialize 
		@name = generate_name
		@instruction_count = 0
		@created_at = Time.now
		@reset_at = Time.now
    end 

	def generate_name 
		digits = ("000".."999").to_a.sample
		letters = ('AA'..'ZZ').to_a.sample
		letters + digits
	end	

	def name	
		@instruction_count += 1
		puts "My name is #{@name}"
	end	

	def reset 
		@instruction_count += 1
		@name = generate_name
		@reset_at = Time.now	
	end

	def timers 
		time_since_reset = Time.now - @reset_at
		time_since_creation = Time.now - @created_at

		message = "#{time_since_reset.round(2)} seconds since last boot, #{time_since_creation.round(2)} since creation."
	end

end

binding.pry
