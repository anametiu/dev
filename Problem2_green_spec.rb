require 'rspec'

def find_max_numbers(array)
  first = 0
  second = 0
  array.each do |x|
    if x > first
      first = x
    end
  end

  array.delete(first)

  array.each do |x|
    if x > second
      second = x
    end
  end
  return Array.new([first, second])
end

describe 'Problem2' do

  it 'should find max numbers' do

    puts expect(find_max_numbers([4, 8, 2, 6, 9, 3])).to eq([9, 8])
    puts expect(find_max_numbers([1, 2, 3, 4, 5, 6])).to eq([6, 5])
    puts expect(find_max_numbers([3, 2, 7, 1, 1, 1])).to eq([7, 3])

  end
end