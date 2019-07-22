require_relative 'lib/player.rb'
require_relative 'lib/team.rb'
# require_relative 'instagram.rb'
require 'pry'

#Los Angeles Lakers Starting 5
Player.new(23, "Lebron James", 6.07, "sf", 97, 28, "lal")
Player.new(3, "Anthony Davis", 6.11, "pf", 94, 24, "lal")
Player.new(14, "Danny Green", 6.06, "sg", 76, 10, "lal")
Player.new(0, "Kyle Kuzma", 6.09, "pg", 83, 19, "lal")
Player.new(3, "DeMarcus Cousins", 6.11, "c", 86, 16, "lal")

#Houston Rockets Starting 5
Player.new(13, "James Harden", 6.05, "sg", 96, 36, "hr")
Player.new(0, "Russell Westbrook", 6.03, "sg", 90, 23, "hr")
Player.new(10, "Eric Gordon", 6.04, "sg", 77, 16, "hr")
Player.new(0, "PJ Tucker", 6.06, "sf", 75, 16, "hr")
Player.new(15, "Clint Capela", 6.10, "sf", 87, 17, "hr")

#Brooklyn Nets Starting 5

#Los Angeles Clippers Starting 5



#Teams
Team.new("lal", "Los Angeles Lakers", ["purple", "gold"], "west", 37, 45, 25, 27, 111, 3)
Team.new("hr", "Houston Rockets", ["red", "white"], "west", 53, 29, 32, 20, 114, 7)
Team.new("bkn", "Brooklyn Nets", ["black", "white"], "east", 42, 40, 29, 23, 112, 10)
Team.new("lac", "Los Angeles Clippers", ["red", "white", "blue"], "west", 48, 34, 28, 24, 115, 1)



binding.pry

puts "The Los Angeles Lakers"