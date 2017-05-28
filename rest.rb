require 'rest-client'

puts "= = = = = = = = = = = = ="
puts "= = = REST-CLIENT = = = ="
puts "= = = = = = = = = = = = ="
puts "= = See what is going = ="
puts "= = on behind the = = = ="
puts "= = = = scenes! = = = = ="
puts "= = = = = = = = = = = = =\n\n"

# Get user search
puts "Enter Song or Artist"
input = gets.chomp

# Format query uri
input = input.split(" ")
input = input.join("+")

# Search Bandcamp for song or artist
response = RestClient.get "https://bandcamp.com/search?q=#{input}"

# Print response codes to terminal
puts "\n\nStatus Code: #{response.code}\n\n"
puts "Headers: #{response.headers}\n\n"
puts "Cookies: #{response.cookies}\n\n"