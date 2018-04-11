class LinkedList
  def initialize
    @pointers = 0
    @array = [{:next => 1, :id => 0}, {:next => 2, :id => 1, :prev => 0}, {:next => 3, :id => 2, :prev => 1}, {:id => 3, :prev => 2 }]
  end

  def show
    puts @array[@pointers][:id]
    puts @array[@pointers]
  end

  def next
    @pointers = @arrray[@pointers][:next]
    puts @pointers[@array]
  end
end

=begin
irb
require "./list"
l = LinkedList.new
l.show

=end
