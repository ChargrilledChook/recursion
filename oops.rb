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
    end
  end

  test1 = [4, 8, 6, 2, 1, 7, 5, 3]
  test2 = [9, 4, 8, 6, 2, 1, 7, 5, 3]
  test3 = [1]
  test4 = [[2, 3], [1, 5]]

  # print array.each_slice((array.size / 2.0).round).to_a


  merged = []

  while test4.flatten.size > 1
    if test4[0][0] < test4[1][0]
      merged << test4[0].shift
    else
      merged << test4[1].shift
    end
  end
  merged << test4.flatten!

  print merged.flatten!
