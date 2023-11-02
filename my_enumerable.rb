module MyEnumerable
  ## the all method checks if a condition is met by all member or returns false
  def all?
    each { |item| return false unless yield(item) }
    true
  end
  ## the any method checks if the condition is met by any member and returns true

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    result = []
    each { |item| result << item if yield item }
    result
  end
end
