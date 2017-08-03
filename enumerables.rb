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
    max_value = nil
    array.each do |element|
      if !max_value || element > max_value
        max_value = element
      end
    end
    max_value
  end

  def self.max_using_max(array)
    array.max
  end

  def self.min_using_each(array)
    min_value = nil
    array.each do |element|
      if !min_value || element < min_value
        min_value = element
      end
    end
    min_value
  end

  def self.min_using_min(array)
    array.min
  end

  def self.sort_using_sort(array)
    array.sort
  end

  def self.sum_using_each(array)
    sum = 0
    array.each do |element|
      sum += element
    end
    sum
  end

  def self.sum_using_reduce(array)
    array.reduce(0) { |sum, element| sum+element }
  end

  def self.product_using_each(array)
    product = 1
    array.each do |element|
      product *= element
    end
    product
  end

  def self.product_using_reduce(array)
    array.reduce(1) { |product, element| product*element }
  end

  def self.symbol_versions_using_each(array)
    symbol_array = []
    array.each do |element|
      symbol_array << element.to_s.to_sym
    end
    symbol_array
  end

  def self.symbol_versions_using_map(array)
    array.map { |element| element.to_s.to_sym }
  end

  def self.multiply_by_two_with_each(array)
    doubled_array = []
    array.each do |element|
      doubled_array << element * 2
    end
    doubled_array
  end

  def self.multiply_by_two_with_map(array)
    array.map { |element| element * 2}
  end

  def self.largest_box_by_weight_using_each(boxes)
    largest_box = nil
    boxes.each do |box|
      if !largest_box || box.weight > largest_box.weight
        largest_box = box
      end
    end
    largest_box
  end

  def self.largest_box_by_weight_using_max_by(boxes)
    boxes.max_by { |box| box.weight }
  end

  def self.smallest_box_by_weight_using_each(boxes)
    smallest_box = nil
    boxes.each do |box|
      if !smallest_box || box.weight < smallest_box.weight
        smallest_box = box
      end
    end
    smallest_box
  end

  def self.smallest_box_by_weight_using_min_by(boxes)
    boxes.min_by { |box| box.weight }
  end

  def self.largest_box_by_volume_using_each(boxes)
    largest_box = nil
    boxes.each do |box|
      if !largest_box || (box.length * box.width * box.height) > (largest_box.length * largest_box.width * largest_box.height)
        largest_box = box
      end
    end
    largest_box
  end

  def self.largest_box_by_volume_using_max_by(boxes)
    boxes.max_by { |box| box.length * box.width * box.height }
  end

  def self.find_red_boxes_using_each(boxes)
    red_boxes = []
    boxes.each do |box|
      if box.color == "red"
        red_boxes << box
      end
    end
    red_boxes
  end

  def self.find_red_boxes_using_select(boxes)
    boxes.select { |box| box.color == 'red' }
  end

  def self.sum_box_weights_using_each(boxes)
    box_weight_sum = 0
    boxes.each do |box|
      box_weight_sum += box.weight
    end
    box_weight_sum
  end

  def self.sum_box_weights_using_reduce(boxes)
    boxes.reduce(0) { |sum, box| sum + box.weight }
  end

  def self.generate_array_of_box_colors_using_each(boxes)
    box_color_array = []
    boxes.each do |box|
      box_color_array << box.color
    end
    box_color_array
  end

  def self.generate_array_of_box_colors_using_map(boxes)
    boxes.map { |box| box.color }
  end

  def self.sort_boxes_in_descending_order_by_weight(boxes)
    boxes.sort { |box| box.weight }
  end

end