module InsertionSort
  def self.insertion_sort(array)
    array.each_with_index do |entry, i|
      j = i - 1
      while j >= 0 && array[j] > entry
        array[j + 1] = array[j]
        j -= 1
      end
      array[j + 1] = entry
    end
    array
  end

  def self.insertion_sort_decreasing(array)
    array.each_with_index do |entry, i|
      j = i - 1
      while j >= 0 && array[j] < entry
        array[j + 1] = array[j]
        j -= 1
      end
      array[j + 1] = entry
    end
    array
  end
end
