require_relative '../enumerables'

RSpec.describe Enumerables do
  let(:integers) { [8, 9, 2, 5, 10, 17, 1, 42, 12] }

  describe 'basic enumerables' do
    it 'finds the largest using each' do
      expect(Enumerables.max_using_each(integers)).to eq 42
    end

    it 'finds the largest using max_by' do
      expect(Enumerables.max_using_max_by(integers)).to eq 42
    end

    it 'finds the smallest using each' do
      expect(Enumerables.min_using_each(integers)).to eq 1
    end

    it 'finds the smallest using min_by' do
      expect(Enumerables.min_using_min_by(integers)).to eq 1
    end

    it 'sorts using sort' do
      expect(Enumerables.sort_using_sort(integers)).to eq [1, 2, 5, 8, 9, 10, 12, 17, 42]
    end
  end

  describe 'more advanced enumerables' do
    it 'adds up all the numbers using each' do
      expect(Enumerables.sum_using_each(integers)).to eq 106
    end

    it 'adds up all the numbers using reduce' do
      expect(Enumerables.sum_using_reduce(integers)).to eq 106
    end

    it 'multiplies all the numbers together using each' do
      expect(Enumerables.product_using_each(integers)).to eq 61689600
    end

    it 'multiplies all the numbers together using reduce' do
      expect(Enumerables.product_using_reduce(integers)).to eq 61689600
    end

    it 'generates an array of symbol versions of integers using each' do
      expect(Enumerables.symbol_versions_using_each(integers)).to eq [:"8", :"9", :"2", :"5", :"10", :"17", :"1", :"42", :"12"]
    end

    it 'generates an array of symbol versions of integers using map' do
      expect(Enumerables.symbol_versions_using_map(integers)).to eq [:"8", :"9", :"2", :"5", :"10", :"17", :"1", :"42", :"12"]
    end

    it 'generates an array of integers that are double the size of the original values using each' do
      expect(Enumerables.multiply_by_two_with_each(integers)).to eq [16, 18, 4, 10, 20, 34, 2, 84, 24]
    end

    it 'generates an array of integers that are double the size of the original values using map' do
      expect(Enumerables.multiply_by_two_with_map(integers)).to eq [16, 18, 4, 10, 20, 34, 2, 84, 24]
    end
  end

end
