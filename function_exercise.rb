
def message_prompt(message)
  print message
  answer = gets.chomp
  return answer
end


def previous_age(year)
  this_year = Time.new.year
  young = (this_year - year.to_i) - 5
  return young
end

name = message_prompt ("Good day. My name is.. ")
year = message_prompt ("The year that I was born was..")
anything = previous_age(year)
puts "The year that I was born #{anything}"

=begin
puts "#{name}"
puts "#{year}"
puts "The year that I was born was #{young}" */
=end
