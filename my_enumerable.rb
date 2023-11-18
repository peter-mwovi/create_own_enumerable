module MyEnumerable
  def all?
    each { |element| return false unless yield(element) }
    true
  end

  def any?
    each { |element| return true if yield(element) }
    false
  end

  def filter
    filtered_list = []
    each do |element|
      filtered_list << element if yield(element)
    end

    filtered_list.empty? ? nil : filtered_list
  end
end
