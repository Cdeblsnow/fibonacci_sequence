require "rubocop"

def merge_sort(array)
  sorted_array = []
  mid = array.length / 2
  left = array[0..mid]
  right = array[mid..-1]
  return array if array.length <= 1

  left_sorted = merge_sort(left)
  right_sorted = merge_sort(right)
  i, j = 0
  while i < left_sorted && j < right_sorted
    if left_sorted[i] < right_sorted[j]
      sorted_array << left_sorted[i]
      i += 1
    else
      sorted_array << right_sorted[j]
      j += 1
    end
    if i >= left_sorted.length
      sorted_array << right_sorted
    elsif j >= right_sorted.length
      sorted_array << left_sorted
    end
  end
  sorted_array
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
