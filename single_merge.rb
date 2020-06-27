# Should take 2 sorted arrays and return a single sorted arrays



def merge(a,b)
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

arr1 = [1, 2, 6, 9]
arr2 = [3, 5, 7, 8]
arr3 = [1, 2, 6, 9, 10]
arr4 = [1, 2, 3, 4]
arr5 = [5, 6, 7, 8, 9, 10, 11]

pp merge([1,7],[3,5])