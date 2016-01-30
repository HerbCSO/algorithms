require 'chapter2/insertion_sort'

describe InsertionSort do
  it 'sorts correctly' do
    input = [5, 2, 4, 1, 3]
    output = InsertionSort.insertion_sort(input)
    expect(output).to eq [1, 2, 3, 4, 5]
  end

  it 'sorts a random array the same way Ruby does' do
    input = (1..100).map { rand(100) }
    output = InsertionSort.insertion_sort(input)
    expect(output).to eq input.sort
  end

  it 'sorts a random array decreeasing the same way Ruby does' do
    input = (1..100).map { rand(100) }
    output = InsertionSort.insertion_sort(input, :decreasing)
    expect(output).to eq input.sort.reverse
  end
end
