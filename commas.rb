# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

# Note #1
# If it's too much, don't worry about handling negative numbers at first.

# Note #2
# As always, focus first on how you would do this *as a human*. Imagine you
# has a piece of paper with a comma-less number on it.  How would you decide to
# insert the commas?  Which comma would you insert first?

# def commas(num)
#   num.reverse
#   x = num.reverse
#   puts "x=#{x}"
#   y = x.gsub(/(\d{3})(?=\d)/, '\\1,')
#   puts "y=#{y}"
#   z = y.reverse
#   puts "z=#{z}"
#   w = num.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
#   puts "w=#{w}"
#   num.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
# end

# puts commas("1")
# puts commas("12")
# puts commas("123")
# puts commas("1234")
# puts commas("12345")
# puts commas("123456")
# puts commas("1234567")
# puts commas("12345678")
# puts commas("123456789")
# puts commas("1234567890")

def commas(num)
  # x = num.reverse.scan(/.{1,#{3}}/)
  # puts "x=#{x}"
  # y = x.join(",")
  # puts "y=#{y}"
  # z = y.reverse
  # puts "z=#{z}"
  num.reverse.scan(/.{1,#{3}}/).join(",").reverse
end

puts commas("1")
puts commas("12")
puts commas("123")
puts commas("1234")
puts commas("12345")
puts commas("123456")
puts commas("1234567")
puts commas("12345678")
puts commas("123456789")
puts commas("1234567890")

puts "Let's test it with any number"
puts "Input a number: "

number = gets.chomp

puts commas(number)


if __FILE__ == $PROGRAM_NAME
 # What are the common cases?  What are the corner cases?
 # Your sanity checks should look like
 #   p commas(input) == ...expected return value...
end

# Hint #1
# Use .to_s to convert a number to a string.  That is,
#
#  5.to_s   == "5"
#  100.to_s == "100"
