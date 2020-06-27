def merge_sort(array)
  if array.size < 2
    array
  else
    # Snippet for halving array from http://heyrod.com/snippets/split-ruby-array-in-half.html
    half = array.each_slice((array.size / 2.0).round).to_a
    a = half[0].to_a
    b = half[1].to_a
    merge_sort(a)
    merge_sort(b)
    # merge sorted halves
    merged = []
    until a[0].nil? || b[0].nil?
      if a[0].nil?
        merged += b
      elsif b[0].nil?
        merged += a
      elsif a[0] < b[0]
        merged << a.shift
      else
        merged << b.shift
      end
    end
    merged
  end
end


test1 = [4, 8, 6, 2, 1, 7, 5, 3]
test2 = [4, 8, 6, 2]
test3 = [1, 7, 5, 3]

def merge(arr1, arr2)
  merged = []

end

print merge_sort(test1)
