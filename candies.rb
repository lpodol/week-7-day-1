# assessment

candies = ["starbust","lifesavers","snickers","milky way", "three musketeers", "skittles"]

candies.each {|n| puts n}

upcased = candies.map {|n| n.upcase}
puts upcased

puts "What's your favorite letter?"
letter = gets.chomp

fav = candies.select { |n|
  n.upcase.include?(letter)
}

if fav.length > 1
  puts fav
else
  puts "No candy for you."
end
