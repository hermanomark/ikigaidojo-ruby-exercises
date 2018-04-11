# 1. Skim through the documentation for strings in the Ruby documentation, and look for a method that
# prepends one string to another string. Using that method prepend the string "Learning " to the
# string "Ruby"

#Ans.
	puts "Exercise 1:"
	a = "Ruby"
	puts a.prepend("Learning ") #=> "Learning Ruby"

# 2. Skim through the documentation for strings in the Ruby documentation, and look for a method that
# removes characters from a string. Using that method turn the string "Learning Ruby" into the string
# "Lrnng Rb".

# Ans.
	puts "Exercise 2:"
	puts "Learning Ruby".delete "eauiy"

# 3. There is a method that allows to justify a string, and padding it with another string.
# Find that method and use it on the string "Ruby" together with "<3" so that you get the
# following string back:
#
# 	"Ruby<3<3<3"

# Ans.
	puts "Exercise 3:"
	puts "Ruby".ljust(10, '<3')

# 4. Create a new, empty file. Save it as arrays_1-1.rb. Fill in the following line:
#
# 	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	# your code goes here

# So that, when you run your code (run ruby arrays_1-1.rb), you get the following output:
#
# 	5

# Ans.
	puts "Exercise 4:"
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	puts numbers[4]

# 5.  Copy your file to a new file: cp arrays_1-1.rb arrays_1-2.rb, then open this new file.
# Add another line before the line that you just added, so that, when you run your code, you get the
# following output:
#
# 	99
#
# Ans.
	puts "Exercise 5:"
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers[4] = 99
	puts numbers[4]

# 6. Make a new file arrays_1-3.rb, and fill in the following line:
#
# 	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 	# your code goes here
# 	p numbers
#
#
# So that you get the following output:
#
# 	[2, 4, 6, 8, 10]

# Ans.
	puts "Exercise 6:"
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers = "#{numbers[1]} #{numbers[3]} #{numbers[5]} #{numbers[7]} #{numbers[9]}"
	p numbers

# 7. Again, copy your last file to a new file: cp arrays_1-3.rb arrays_1-4.rb, then
# open this new file.
#
# Now change the code that you just added so that you get the following output:
#
# 	[10, 8, 6, 4, 2]
#
# Note: The method select that you used in the last exercise returns an array. On this
# array (the return value) you can use another method, by, again, just appending a dot . and
# the method name to it, i.e., to the end of the line.
#
# Note: There is another method that reverses the order of the array. You can find it by
# googling for “ruby array reverse”.
#
# Ans.
	puts "Exercise 7:"
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers = "#{numbers[1]} #{numbers[3]} #{numbers[5]} #{numbers[7]} #{numbers[9]}"
	p numbers.split.reverse

# 8. Again, copy your last file to a new file: cp arrays_1-4.rb arrays_1-5.rb, then
# open this new file.
#
# Now change your code so that you get the following output:
#
# 	[10, 8, 4, 2]
#
# Ans.
	puts "Exercise 8: 4 solutions"
	#solution 1
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers = "#{numbers[1]} #{numbers[3]} #{numbers[5]} #{numbers[7]} #{numbers[9]}"
	p numbers.delete("6").split.reverse

# Bonus: Find at least three different solutions for this last change.

	#solution 2
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	numbers = "#{numbers[1]} #{numbers[3]} #{numbers[7]} #{numbers[9]}"
	p numbers.split.reverse

	#solution 3
	numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	p numbers = "#{numbers[9]} #{numbers[7]} #{numbers[3]} #{numbers[1]}"

	#solution 4
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  numbers.delete_at(5)
  p numbers.reverse.select { |num| num.even? }

# 9. Make a new file hashes_1-1.rb, and fill in the following line:
#
# 	dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
# 	# your code goes here
#
# So that it prints out dos.
#
# Ans.
	puts "Exercise 9:"
	dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
	puts dictionary[:two]

# 10. Make a new file hashes_1-2.rb, and fill in the following line:
#
# 	dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
# 	# your code goes here
# 	puts dictionary[:four]
#
# So that it prints out cuatro.
#
# Ans.
	puts "Exercise 10:"
	dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }
	dictionary[:four] = 'cuatro'
	puts dictionary[:four]
