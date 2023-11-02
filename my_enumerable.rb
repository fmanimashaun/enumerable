module MyEnumerable
  ## the all method checks if a condition is met by all member or returns fals
  def all?
    each { |item| return false unless yield(item) }
    true
  end
end
