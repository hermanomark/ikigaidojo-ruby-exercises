class LinkedList
  def initialize
    @node = [{:index => 0, :next => 1, :prev => -1}]
    @pointer = 0
  end

  def add_node(x)
    @node[-1][:next] = @node.count
    x.times do
      @node << {:index => @node.count, :next => @node.count + 1, :prev => @node.count - 1}
    end
    @node[-1][:next] = 0
  end

  # def delete_node(x)
  #   @node.delete_at(x)
  #   # @node[x-1][:next] += 1
  #   # @node[x+1][:prev] -= 1
  # end

  def next
    p @node[@pointer]
    @pointer = @node[@pointer][:next]
  end

  def prev
    p @node[@pointer]
    @pointer =  @node[@pointer][:prev]
  end
end

=begin

irb
require "./linkedlist"
l = LinkedList.new
l.add_node(3)

=end
