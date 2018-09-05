require './robot'

@robot = Robot.new

def report
  return @robot.report
end

def place(x,y,direction)
  @robot.place(x, y, direction)
  return @robot.report
end

def move
  @robot.move
  return @robot.report
end

def left
  @robot.left
  return @robot.report
end

def right
  @robot.right
  return @robot.report
end

puts "Place the robot: "
while (place, x, y, direction = gets.chomp.split) do
  # case instruction.downcase
  #   when 'place' then puts place 
  #     break
  #   when 'quit' then break
  #   else puts "Please place the robot first!"
  # end
  checkPlace = place.downcase
  if (checkPlace == 'place' && x != nil && y != nil && direction != nil)
    puts place(x, y, direction) 
      break
  else 
    puts "Please place the robot first!"
  end
end

puts "You can now choose from the menu!"
puts "\n
      Instruct the robot! \n
      Menu: \n
      1. Report \n
      2. Move \n
      3. Left \n
      4. Right \n
      5. Quit \n "

while instruction = gets.chomp do
  case instruction.downcase
    when "report" then puts report
    when "move" then puts move
    when "left" then puts left
    when "right" then puts right
    when "quit" then break
    else puts "Please choose from the menu!"
  end
end