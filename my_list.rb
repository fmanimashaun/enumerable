require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4, 5)
puts "list.all? { |item| item > 0 } returns #{list.all?(&:positive?)}"
puts "list.any? { |item| item > 2 } returns #{list.any? { |item| item > 2 }}"
print(list.filter(&:even?))
print(list.filter(&:odd?))
