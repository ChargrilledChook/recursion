require 'pry'

# on in input of n elements
# if n < 2
  # return
# else
  # sort left half of elements
  # sort right half of elements
  # merge sorted halves

def merge_sort(array)
  if array.size < 2
    array
  else
    # Snippet for halving array from http://heyrod.com/snippets/split-ruby-array-in-half.html
    half = array.each_slice((array.size / 2.0).round).to_a
    merge_sort(half[0])
    merge_sort(half[1])
    # merge sorted halves
    merged = []
    until half[0][0].nil? || half[1][0].nil?
      if half[0][0] < half[1][0]
        merged << half[0].shift
      else
        merged << half[1].shift
      end
    end
    merged << half.flatten!
  end
  unless merged.nil?
    merged.flatten!
  end
  merged
end

test1 = [4, 8, 6, 2, 1, 7, 5, 3]
test2 = [9, 4, 8, 6, 2, 1, 7, 5, 3]
test3 = [1]
test4 = [[2, 3], [1, 5]]

# print array.each_slice((array.size / 2.0).round).to_a

def merge(half)
  merged = []
  while half.size.flatten! > 1
    if half[0][0] < half[1][0]
      merged << half[0].shift
    else
      merged << half[1].shift
    end
  end
  merged << half
  merged
end

print merge_sort(test1)
