module EnumerablesPractice

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

  class << self

    # Basic enumerables practice
    def max_using_each(array)
    end

    def max_using_max(array)
    end

    def min_using_each(array)
    end

    def min_using_min(array)
    end

    def sort_using_sort(array)
    end

    # More advanced enumerables practice
    def sum_using_each(array)
    end

    def sum_using_reduce(array)
    end

    def product_using_each(array)
    end

    def product_using_reduce(array)
    end

    def symbol_versions_using_each(array)
    end

    def symbol_versions_using_map(array)
    end

    def multiply_by_two_with_each(array)
    end

    def multiply_by_two_with_map(array)
    end

    def largest_box_by_weight_using_each(boxes)
    end

    def largest_box_by_weight_using_max_by(boxes)
    end

    def smallest_box_by_weight_using_each(boxes)
    end

    def smallest_box_by_weight_using_min_by(boxes)
    end

    def find_red_boxes_using_each(boxes)
    end

    def find_red_boxes_using_select(boxes)
    end

    def sum_box_weights_using_each(boxes)
    end

    def sum_box_weights_using_reduce(boxes)
    end

    def generate_array_of_box_colors_using_each(boxes)
    end

    def generate_array_of_box_colors_using_map(boxes)
    end

    def sort_boxes_in_descending_order_by_weight(boxes)
    end

    # Stretch Challenges

    def largest_box_by_volume_using_each(boxes)
    end

    def largest_box_by_volume_using_max_by(boxes)
    end

    def sort_ascending_without_sort(integers)
    end

    def sort_descending_without_sort(integers)
    end

  end
end
