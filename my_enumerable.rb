# This module provides enumerable methods for iterating over collections.
module MyEnumerable
  def all?
    each do |y|
      return false unless yield(y)
    end
    true
  end

  def any?
    each do |y|
      return true if yield(y)
    end
    false
  end

  def filter
    result = []
    each do |y|
      result << y if yield(y)
    end
    result
  end
end
