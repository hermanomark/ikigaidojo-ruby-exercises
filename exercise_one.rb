my_name = " "
year_born = " "

print "Good day. My name is..."
my_name = gets.chomp

print "The year that I was born was"
year_born = gets.chomp

#to_i convert string to integer
young_age = 2018 - year_born.to_i - 5

print "5 years ago, my age was #{young_age} year(s) old"
