# Recursion

Project for the Computer Science section of The Odin Project.

Two smallish algorithms to practice recursive methodologies - fibonacci and merge sort.

Version 1 completed and submitted 27/6/20.

## Fibonacci

Works as expected but I perhaps got it somewhat backwards by using default arguments? Seems almost to miss the point but perhaps that's harsh.
A nice and neat solution otherwise.

## Merge Sort

Got stuck on this one for a while and the big takeaway is make sure you know what to fix before diving in - I hacked apart my solution several times trying to fix a part of it that wasn't broken. The real solution was earlier in a part I assumed was working. 

The two real problems were:  

* At one point I had a 2D array instead of 2 separate arrays - make sure you check what things are returning
* The biggest problem - I was using recursion without ever assigning the result of the inner methods to anything. This was necessary for the final step of the algorithm.

Key lesson here is to use debugging tools more and to make a bigger effort to diagnose and understand issues before diving in trying to fix it.
Also, keep practicing recursion.

That block aside, while the function works the bottom merge feels clunky / inelegant. Have an attempt at improving now you have a working version.


