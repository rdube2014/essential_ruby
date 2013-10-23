require './challenge_1.rb'
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

puts "Enter your loan amount."
present_value = gets.chomp.to_i

puts "Enter your number of payments."
number_of_payments = gets.chomp.to_i


loan_quotes.each do |zebra|
	puts "The rate at #{zebra["bank"]} is #{zebra["rate"]}"
	puts "The monthly payment at #{zebra["bank"]} is #{pmt(zebra["rate"], number_of_payments, present_value)}" 
end	




=begin
hash = { "bank" => "Elm Street Bank", "rate" => 0.013}

puts hash["bank"]

puts hash["rate"]
=end
