#String methods

#Delete a character in a string
def delete(str)
  str.delete " "
end

puts delete("hello world")
#=> helloworld

def delete_letter(str)
  str.delete "elo"
end

puts delete_letter("hello world")
#=> h wrd

def check_empty(str)
  str.empty?
end

#Checks if a string is empty
puts check_empty("hello")
#=> false
puts check_empty(" ")
#=> false
puts check_empty("")
#=> true

# Replace the value of a variable
def replace(str)
  str.replace "world"
end

s = "hello"
puts replace(s)
 #=> world

#Reverse the string
def reverse(str)
  str.reverse
end

puts reverse("hellow wolrd")
#=> drlow wolleh

#Removes the front and trailing white space

def strip(str)
  str.strip
end

puts strp("     hello world    ")
#=> hello world

#Removes the trailing white space
def rstrip(str)
  str.rstrip
end

puts rstrip("hello world       ")
#=> hello world

#Removes the front white space
def lstrip(str)
  str.lstrip
end

puts lstrip("          hello world")
#=> hello world

#checks the length of a string
def length(str)
  str.length
end

puts length("hello world")
#=> 11

#Try to convert objects to string
def try_convert(obj)
  String.try_convert(obj)
end

puts try_convert("hello world")
#=> hello world

puts try_convert(123213121)
#=> nil
