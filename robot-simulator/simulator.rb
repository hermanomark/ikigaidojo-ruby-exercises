#To run robot simulator:
# ruby simulator.rb

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
while (instruction, x, y, direction = gets.chomp.split) do
  if instruction == nil then instruction = "placeholder" else instruction end
  if direction == nil then direction = "placeholder" else direction end
  info = [instruction.downcase, x, y, direction.downcase]
  
  if info[0] == "place" && info[1] != nil && info[2] != nil && (info[3] == "north" || info[3] == "south" || info[3] == "east" || info[3] == "west")
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
      5. Place \n
      6. Quit \n "

while (instruction, x, y, direction = gets.chomp.split) do
  if instruction == nil then instruction = "placeholder" else instruction end
  if direction == nil then direction = "placeholder" else direction end
  info = [instruction.downcase, x, y, direction.downcase]

  if info[0] == "report" && info[1] == nil && info[2] == nil && info[3] == "placeholder"
    puts report
  elsif info[0] == "move" && info[1] == nil && info[2] == nil && info[3] == "placeholder"
    puts move
  elsif info[0] == "left" && info[1] == nil && info[2] == nil && info[3] == "placeholder"
    puts left
  elsif info[0] == "right" && info[1] == nil && info[2] == nil && info[3] == "placeholder"
    puts right
  elsif info[0] == "place" && info[1] != nil && info[2] != nil && (info[3] == "north" || info[3] == "south" || info[3] == "east" || info[3] == "west")
    puts place(x, y, direction)
  elsif info[0] == "quit" && info[1] == nil && info[2] == nil && info[3] == "placeholder"
    break
  else
    puts "Please choose from the menu!"
  end 
end