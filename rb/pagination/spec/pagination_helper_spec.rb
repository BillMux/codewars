require 'pagination_helper'

describe PaginationHelper do
  page_length = 2
  arr = ['this', 'is', 'a', 'test']
  subject { described_class.new(arr, page_length) }
  arr_2 = arr + ['hooray']
  subject_2 = described_class.new(arr_2, page_length)

  describe '#page_count' do
    it 'returns the number of pages' do
      expect(subject.page_count).to eq 2
      expect(subject_2.page_count).to eq 3
    end
  end

  describe '#item_count' do
    it 'returns the number of items within the entire collection' do
      expect(subject.item_count).to eq 4
      expect(subject_2.item_count).to eq 5
    end
  end

  describe '#page_item_count' do
    it 'returns the number of items on the current page' do
      expect(subject_2.page_item_count(0)).to eq 2
      expect(subject_2.page_item_count(2)).to eq 1
    end

    it 'returns -1 if out of range' do
      expect(subject_2.page_item_count(3)).to eq -1
    end
  end

  describe '#page_index' do
    it 'determines what page an item is on' do
      expect(subject_2.page_index(0)).to eq 0
      expect(subject_2.page_index(1)).to eq 0
      expect(subject_2.page_index(4)).to eq 2
    end

    it 'returns -1 if out of range' do
      expect(subject_2.page_index(5)).to eq -1
    end
  end
end
