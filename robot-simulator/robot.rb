# to test in irb:
# irb
# load './robot.rb'

class Robot
  def initialize
    @position = [0,0]
    @direction = :north
  end

  def place(x, y, direction)
    x = x.to_i
    y = y.to_i

    if x < 0
      x = 0
      puts "Oops! you cannot place the robot outside the 5x5 dimension, set the x to the minimum dimension"
    end

    if x > 5
      x = 5
      puts "Oops! you cannot place the robot outside the 5x5 dimension, set the x to the maximum dimension"
    end

    if y < 0
      y = 0
      puts "Oops! you cannot place the robot outside the 5x5 dimension, set the y to the minimum dimension"
    end

    if y > 5
      y = 5
      puts "Oops! you cannot place the robot outside the 5x5 dimension, set the y to the maximum dimension"
    end

    @position = [x,y]
    @direction = case direction.downcase
      when "north" then :north
      when "south" then :south
      when "west" then :west
      when "east" then :east
    end
  end 

  def report
   position = @position.join(',')
   @report = "Output: #{position},#{@direction.upcase}"
   return @report
  end

  def move
    case @direction
      when :north then @position[1] += 1
      when :south then @position[1] -= 1
      when :east then @position[0] += 1
      when :west then @position[0] -= 1 
    end

    if @position[1] < 0
      puts "Prevented robot from falling, stay where you are!"
      @position[1] += 1
    end

    if @position[1] > 5
      puts "Prevented robot from falling, stay where you are!"
      @position[1] -= 1
    end

    if @position[0] < 0
      puts "Pevented robot from falling, stay where you are!"
      @position[0] += 1
    end

    if @position[0] > 5
      puts "Pevented robot from falling, stay where you are!"
      @position[0] -= 1
    end
  end

  def left
    case @direction
      when :north then @direction = :west
      when :south then @direction = :east
      when :east then @direction = :north
      when :west then @direction = :south
    end
  end

  def right
    case @direction
      when :north then @direction = :east
      when :south then @direction = :west
      when :east then @direction = :south
      when :west then @direction = :north
    end
  end
end