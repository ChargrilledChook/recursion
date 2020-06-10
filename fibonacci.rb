def fib_iterate(num)
  num1 = 0
  num2 = 1
  num.times do
    puts num1
    num3 = num1 + num2
    num1 = num2
    num2 = num3
  end
end

def fib_recur(num, int1 = 0, int2 = 1)
  puts int1
  num == 1 ? return : fib_recur(num - 1, int2, int1 + int2)
end

fib_iterate(5)
fib_recur(5)

