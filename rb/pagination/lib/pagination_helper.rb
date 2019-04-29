# TODO: complete this class

class PaginationHelper
  attr_reader :item_count

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
    @item_count = collection.length
  end

  def page_count
    count = @item_count / @items_per_page
    @item_count % @items_per_page == 0 ? count : count + 1
  end

  def page_item_count(page_index)
    return -1 if page_index > page_count - 1
    if page_index == page_count - 1
      @item_count % @items_per_page
    else
      @items_per_page
    end
  end

  def page_index(item_index)
    return -1 if item_index > @item_count - 1 || item_index.negative?
    item_index / @items_per_page
  end
end
