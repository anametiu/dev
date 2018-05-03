require 'rspec'

def  sum_even_numbers(array)

  sum = 0
  array.each { |x| sum += x % 2 == 0 ? x : 0 }
  return sum

end

describe 'Problem1' do

  it 'should sum even numbers' do

    puts expect(sum_even_numbers([1, 2, 3, 4, 5, 6])).to eq(12)
    puts expect(sum_even_numbers([3, 2, 7, 1, 1, 1])).to eq(2)
    puts expect(sum_even_numbers([2, 6, 2, 4, 2, 2])).to eq(18)

  end
end