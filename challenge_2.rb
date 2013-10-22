#require './challenge_1.rb'
# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "rate" => 0.013},
  { "bank" => "Oak Street Bank", "rate" => 0.009},
  { "bank" => "Ash Street Bank", "rate" => 0.011}
]

# Let's ask our user for the parameters of the loan:

loan_quotes.each do |info|
	puts info	
end

puts "Enter the loan amount:"
present_value = gets.chomp.to_i

puts "Enter the number of payments:"
number_of_payments = gets.chomp.to_i

loan_quotes.each do |info|
	puts "The monthly payment for #{info["bank"]} is: (present_value * #{info["rate"]})*((1+#{info["rate"]})**number_of_payments))/(((1+#{info["rate"]})**number_of_payments)-1)" 
end

puts

puts "The monthly payment for Elm Street Bank is:"
puts (present_value * 0.013*((1+0.013)**number_of_payments))/(((1+0.013)**number_of_payments)-1)

puts

puts "The monthly payment for Oak Street Bank is:"
puts puts (present_value * 0.009*((1+0.009)**number_of_payments))/(((1+0.009)**number_of_payments)-1)

puts

puts "The monthly payment for Ash Street Bank is:"
puts puts (present_value * 0.011*((1+0.011)**number_of_payments))/(((1+0.011)**number_of_payments)-1)

puts

loan_quotes.each do |info|
	puts "#{info["rate"]}.to_i * 3"
end

#Now, loop through the array of loan quotes using .each:
#For each option, tell the user how much the monthly payment will be to that bank.
#Re-use the pmt method that you defined in Challenge 1.
