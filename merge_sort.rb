# on an input of n elements
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
    left, right = array.each_slice( (array.size/2.0).round ).to_a #https://gist.github.com/chris-79/5630453
    left = merge_sort(left)
    right = merge_sort(right)
    merge(left, right)
  end
end

def merge(a, b)
  i = 0
  j = 0
  result = []
  until i == a.length || j == b.length
    if a[i] > b[j]
      result << b[j]
      j += 1
    else
      result << a[i]
      i += 1
    end
  end
  if i > j
    until j == b.length
      result << b[j]
      j += 1
    end
  else
    until i == a.length
      result << a[i]
      i += 1
    end
  end
  result
end

test1 = [4, 8, 6, 2, 1, 7, 5, 3]
test2 = [9, 4, 8, 6, 2, 1, 7, 5, 3, 6, 2, 1, 7, 5, -1]
test3 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1]

pp merge_sort(test1)
pp merge_sort(test2)
pp merge_sort(test3)
