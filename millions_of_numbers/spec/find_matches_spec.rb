require_relative '../find_matches'

RSpec.describe 'find_matches' do
  it 'returns common elements in three sorted arrays' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]

    expect(find_matches(nums_1, nums_2, nums_3)).to eq([2, 5])
  end

  it 'returns an empty array if there are no common elements' do
    nums_1 = [1, 3, 5, 7, 9]
    nums_2 = [2, 4, 6, 8, 10]
    nums_3 = [11, 12, 13, 14, 15]

    expect(find_matches(nums_1, nums_2, nums_3)).to eq([])
  end

  it 'returns common elements when all arrays are the same' do
    nums_1 = [1, 2, 3, 4, 5]
    nums_2 = [1, 2, 3, 4, 5]
    nums_3 = [1, 2, 3, 4, 5]

    expect(find_matches(nums_1, nums_2, nums_3)).to eq([1, 2, 3, 4, 5])
  end

  # it 'returns common elements when arrays contain negative numbers' do
  #   nums_1 = [-5, -3, 0, 2, 5]
  #   nums_2 = [-4, -2, 1, 3, 5]
  #   nums_3 = [-3, -1, 2, 4, 5]

  #   expect(find_matches(nums_1, nums_2, nums_3)).to eq([-3, 5])
  # end
end