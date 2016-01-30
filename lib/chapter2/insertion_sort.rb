module InsertionSort
  def self.insertion_sort(array, order = :increasing)
    array.each_with_index do |entry, i|
      j = i - 1
      while j >= 0 && compare(array[j], entry, order)
        array[j + 1] = array[j]
        j -= 1
      end
      array[j + 1] = entry
    end
    array
  end

  def self.compare(a, b, order)
    if order == :increasing
      a > b
    else
      a < b
    end
  end
  private_class_method :compare
end
