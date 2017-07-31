module Enumerables

  class Box
    attr_accessor :length,
                  :width,
                  :height,
                  :weight,
                  :color

    def initialize(args = {})
      @length = args[:length]
      @width  = args[:width]
      @height = args[:height]
      @weight = args[:weight]
      @color  = args[:color]
    end
  end

  def self.max_using_each(array)
  end

  def self.max_using_max_by(array)
  end

  def self.min_using_each(array)
  end

  def self.min_using_min_by(array)
  end

  def self.sort_using_sort(array)
  end

  def self.sum_using_each(array)
  end

  def self.sum_using_reduce(array)
  end

  def self.product_using_each(array)
  end

  def self.product_using_reduce(array)
  end

  def self.symbol_versions_using_each(array)
  end

  def self.symbol_versions_using_map(array)
  end

  def self.multiply_by_two_with_each(array)
  end

  def self.multiply_by_two_with_map(array)
  end

  def self.largest_box_by_weight_using_each(boxes)
  end

  def self.largest_box_by_weight_using_max_by(boxes)
  end

  def self.smallest_box_by_weight_using_each(boxes)
  end

  def self.smallest_box_by_weight_using_min_by(boxes)
  end

  def self.largest_box_by_volume_using_each(boxes)
  end

  def self.largest_box_by_volume_using_max_by(boxes)
  end

  def self.find_red_boxes_using_each(boxes)
  end

  def self.find_red_boxes_using_select(boxes)
  end

  def self.sum_box_weights_using_each(boxes)
  end

  def self.sum_box_weights_using_reduce(boxes)
  end

  def self.generate_array_of_box_colors_using_each(boxes)
  end

  def self.generate_array_of_box_colors_using_map(boxes)
  end

  def self.sort_boxes_in_descending_order_by_weight(boxes)
  end

end
