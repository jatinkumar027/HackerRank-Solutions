# Problem Solving

## 001 Solve Me First
```python
def solveMeFirst(a,b):
	# Hint: Type return a+b below
    return a+b

num1 = int(input())
num2 = int(input())
res = solveMeFirst(num1,num2)
print(res)
```
## 002 Simple Array Sum
```python
import math
import os
import random
import re
import sys

#
# Complete the 'simpleArraySum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.
#

def simpleArraySum(ar):
    # Write your code here
    return sum(ar)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ar_count = int(input().strip())

    ar = list(map(int, input().rstrip().split()))

    result = simpleArraySum(ar)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 003 Compare the Triplets
```python
import math
import os
import random
import re
import sys

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b):
    arr = [0] * 2
    # Write your code here
    for i in range(0,3):   
        if(a[i]>b[i]):
            arr[0] += 1
        elif(a[i]<b[i]):
            arr[1] += 1
    return arr

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = compareTriplets(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
```
## 004 A Very Big Sum
```python
import math
import os
import random
import re
import sys

#
# Complete the 'aVeryBigSum' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts LONG_INTEGER_ARRAY ar as parameter.
#

def aVeryBigSum(ar):
    # Write your code here
    return sum(ar)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    ar_count = int(input().strip())

    ar = list(map(int, input().rstrip().split()))

    result = aVeryBigSum(ar)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 005 Diagonal Difference
```python
import math
import os
import random
import re
import sys

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr):
    # Write your code here
    x = len(arr)
    total = 0
    for i in range(0,x):
        total +=  arr[i][i] - arr[i][-(i+1)]
    return abs(total)    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))

    result = diagonalDifference(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 006 Plus Minus
```python
import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    # Write your code here
    x = len(arr)
    mydict = {'pos' : 0, 'neg' : 0, 'zero' : 0}
    for i in range(0,x):
        if(arr[i]>0):
            mydict['pos'] += 1
        elif(arr[i]<0):
            mydict['neg'] += 1
        else:
            mydict['zero'] += 1 
    total = sum(mydict.values())  
    print("{:.6f}".format(mydict['pos']/total))  
    print("{:.6f}".format(mydict['neg']/total))             
    print("{:.6f}".format(mydict['zero']/total))             
               
            

if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
```
## 007 Staircase
```python
import math
import os
import random
import re
import sys

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n):
    # Write your code here
    for i in range(1,n+1):
        print(str('#'*i).rjust(n))

if __name__ == '__main__':
    n = int(input().strip())

    staircase(n)
```
## 008 Mini-Max Sum
```python
import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr):
    # Write your code here
    arr.sort()
    print(sum(arr) - arr[len(arr)-1], sum(arr) - arr[0])
    

if __name__ == '__main__':

    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
```
## 009 Birthday Cake Candles
```python
import math
import os
import random
import re
import sys

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles):
    # Write your code here
    return candles.count(max(candles))        
       
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    candles_count = int(input().strip())

    candles = list(map(int, input().rstrip().split()))

    result = birthdayCakeCandles(candles)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 010 Time Conversion
```python
import math
import os
import random
import re
import sys

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s):
    # Write your code here
    if(s[-2:]=='AM' and s[:2]=='12'):
        return '00'+s[2:-2]
    elif(s[-2:]=='PM' and s[:2]=='12'):
        return s[:-2]
    elif(s[-2:]=='AM'):
        return s[:-2]
    else:
        return str(int(s[:2])+12) + s[2:-2]

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    fptr.write(result + '\n')

    fptr.close()
```
## 011 Grading Students
```python
import math
import os
import random
import re
import sys

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(count, grades):
    # Write your code here
    for i in range(0,count):
        val = 5 - (grades[i]%5)
        if(grades[i] < 38):
            pass
        elif(val < 3):
            grades[i] += val
        elif(val>=3):
            pass
        
    return grades
            
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    grades_count = int(input().strip())

    grades = []

    for _ in range(grades_count):
        grades_item = int(input().strip())
        grades.append(grades_item)

    result = gradingStudents(grades_count, grades)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
```
## 012 Apple and Orange
```python
import math
import os
import random
import re
import sys

#
# Complete the 'countApplesAndOranges' function below.
#
# The function accepts following parameters:
#  1. INTEGER s
#  2. INTEGER t
#  3. INTEGER a
#  4. INTEGER b
#  5. INTEGER_ARRAY apples
#  6. INTEGER_ARRAY oranges
#

def countApplesAndOranges(s, t, a, b, apples, oranges, m, n):
    # Write your code here
    d1, d2, c1, c2, h = s - a , b - t, 0, 0, t - s, 
    for i in range(0,m):
        sub = apples[i] - d1
        if(apples[i]<= 0):
            pass
        elif(sub >=0 and sub <= h):
            c1 += 1
    for i in range(0,n):
        add = d2 + oranges[i]
        if(oranges[i]>=0):
            pass
        elif(add <=0 and add >= -h):
            c2 += 1   
    print(c1, c2, sep='\n')             
            
    
if __name__ == '__main__':
    first_multiple_input = input().rstrip().split()

    s = int(first_multiple_input[0])

    t = int(first_multiple_input[1])

    second_multiple_input = input().rstrip().split()

    a = int(second_multiple_input[0])

    b = int(second_multiple_input[1])

    third_multiple_input = input().rstrip().split()

    m = int(third_multiple_input[0])

    n = int(third_multiple_input[1])

    apples = list(map(int, input().rstrip().split()))

    oranges = list(map(int, input().rstrip().split()))

    countApplesAndOranges(s, t, a, b, apples, oranges, m, n)
```
## 013 Number Line Jumps
```python
import math
import os
import random
import re
import sys

#
# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#

def kangaroo(x1, v1, x2, v2):
    # Write your code here
    while(1):
        if(v2>v1):
            return "NO"
        elif(x2>x1 and v2==v1):
            return "NO"
        elif(x1+v1 == x2+v2):
            return "YES"
        elif(x1+v1 > x2+v2):
            return "NO"
        else:
            x1 += v1
            x2 += v2 
            

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    x1 = int(first_multiple_input[0])

    v1 = int(first_multiple_input[1])

    x2 = int(first_multiple_input[2])

    v2 = int(first_multiple_input[3])

    result = kangaroo(x1, v1, x2, v2)

    fptr.write(result + '\n')

    fptr.close()
```
## 014 Between Two Sets
```python
from math import gcd
import os
import random
import re
import sys
from functools import reduce

#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b):
    # Write your code here
    # This function computes LCM
    mylcm = reduce(lambda x, y : x*y // gcd(x,y), a)
    mygcd = reduce(gcd, b)
    count = 0
    return sum(1 for x in range(mylcm,mygcd+1,mylcm) if mygcd%x==0)
    
    
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    m = int(first_multiple_input[1])

    arr = list(map(int, input().rstrip().split()))

    brr = list(map(int, input().rstrip().split()))

    total = getTotalX(arr, brr)

    fptr.write(str(total) + '\n')

    fptr.close()
```
## 015 Breaking the Records
```python
import math
import os
import random
import re
import sys

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores, n):
    # Write your code here
    high, low, hc, lc = scores[0], scores[0], 0 ,0
    for i in range(0,n):
        if(scores[i]>high):
            high = scores[i]
            hc += 1
        elif(scores[i]<low):
            low = scores[i]
            lc += 1    
    return hc,lc  
        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    scores = list(map(int, input().rstrip().split()))

    result = breakingRecords(scores, n)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
```
## 016 Subarray Division
```python
import math
import os
import random
import re
import sys

#
# Complete the 'birthday' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY s
#  2. INTEGER d
#  3. INTEGER m
#

def birthday(n, s, d, m):
    # Write your code here
    count = 0
    if(n<m):
        return 0
    
    window_sum = sum(s[:m])
    if(window_sum == d):
        count += 1
    
    max_sum = window_sum
    
    for i in range(n - m):
        window_sum = window_sum - s[i] + s[i+m]
        
        if(window_sum == d):
            count += 1
    
    return count        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    s = list(map(int, input().rstrip().split()))

    first_multiple_input = input().rstrip().split()

    d = int(first_multiple_input[0])

    m = int(first_multiple_input[1])

    result = birthday(n, s, d, m)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 017 Divisible Sum Pairs
```python
import math
import os
import random
import re
import sys

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar):
    # Write your code here
    count = 0
    for i in range(n-1):
        j = i+1
        while j < n:
            if ((ar[i] + ar[j]) % k) == 0:
                count += 1
            j += 1
    return count

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    k = int(first_multiple_input[1])

    ar = list(map(int, input().rstrip().split()))

    result = divisibleSumPairs(n, k, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 018 Migratory Birds
```python
import math
import os
import random
import re
import sys
from collections import Counter

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def migratoryBirds(arr):
    # Write your code here
    my_dict = Counter(arr)
    mylist = []
    maximum = max(my_dict.values())
    for item in my_dict:
        print(item, my_dict[item], maximum)
        if my_dict[item]>=maximum :
            maximum = my_dict[item]
            mylist.append(item)
    print(mylist)
    return min(mylist)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    arr_count = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    result = migratoryBirds(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 019 Day of the Programmer
```python
import math
import os
import random
import re
import sys

#
# Complete the 'dayOfProgrammer' function below.
#
# The function is expected to return a STRING.
# The function accepts INTEGER year as parameter.
#

def dayOfProgrammer(year):
    # Write your code here
    if year%4==0 and (year<1918 or year%400==0 or year%100!=0):
        return "12.09.%s" % year
    elif year == 1918:
        return "26.09.1918"
    return "13.09.%s" % year

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    year = int(input().strip())

    result = dayOfProgrammer(year)

    fptr.write(result + '\n')

    fptr.close()
```
## 020 Sales by Match
```python
import math
import os
import random
import re
import sys

#
# Complete the 'sockMerchant' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER_ARRAY ar
#

def sockMerchant(n, ar):
    # Write your code here
    countsocks = dict()
    count = 0
    for sock in ar:
        if sock in countsocks:
            countsocks[sock] = countsocks[sock] + 1
        else:
            countsocks[sock] = 1       
    for num in countsocks.values():
        count = count + math.floor(num/2)     
    return count               

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    ar = list(map(int, input().rstrip().split()))

    result = sockMerchant(n, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 021 Drawing Book
```python
# to be done
```
## 022 Counting Valleys
```python
import math
import os
import random
import re
import sys

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(steps, path):
    # Write your code here
    count, sealevel, valleys = 0, 0, 0
    
    for i in path:              
        if(i=='U'):
            count = count + 1
            if(count == sealevel):
                valleys = valleys + 1
        else:
            count = count - 1    
    return valleys        
        
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    steps = int(input().strip())

    path = input()

    result = countingValleys(steps, path)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 045 Repeated String
```python
import math
import os
import random
import re
import sys

#
# Complete the 'repeatedString' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. STRING s
#  2. LONG_INTEGER n
#

def repeatedString(s, n):
    # Write your code here
    x,y = divmod(n,len(s))
    return s[:y].count("a")*(x+1) + s[y:].count("a")*x       

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    n = int(input().strip())

    result = repeatedString(s, n)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 046 Jumping on the Clouds
```python
import math
import os
import random
import re
import sys

#
# Complete the 'jumpingOnClouds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY c as parameter.
#

def jumpingOnClouds(c):
    i = count_jumps = 0
    length = len(c)

    while i < length - 2:
        if c[i+2] == 1:
            i += 1
        else:
            i += 2
        count_jumps += 1
    
    if i == length - 2:
        count_jumps += 1

    return count_jumps             
                
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    c = list(map(int, input().rstrip().split()))

    result = jumpingOnClouds(c)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## New Year Chaos
```python
import math
import os
import random
import re
import sys

#
# Complete the 'minimumBribes' function below.
#
# The function accepts INTEGER_ARRAY q as parameter.
#

def minimumBribes(Q):
    # Write your code here
    # initialize the number of moves
    moves = 0 
    # decrease Q by 1 to make index-matching more intuitive
    # so that our values go from 0 to N-1, just like our
    # indices.  (Not necessary but makes it easier to
    # understand.)
    Q = [P-1 for P in Q]
    # Loop through each person (P) in the queue (Q)
    for i,P in enumerate(Q):
        # i is the current position of P, while P is the
        # original position of P.
        #
        # First check if any P is more than two ahead of 
        # its original position
        if P - i > 2:
            print("Too chaotic")
            return
        #
        # From here on out, we don't care if P has moved
        # forwards, it is better to count how many times
        # P has RECEIVED a bribe, by looking at who is
        # ahead of P.  P's original position is the value
        # of P.
        # Anyone who bribed P cannot get to higher than
        # one position in front if P's original position,
        # so we need to look from one position in front
        # of P's original position to one in front of P's
        # current position, and see how many of those 
        # positions in Q contain a number large than P.
        # In other words we will look from P-1 to i-1,
        # which in Python is range(P-1,i-1+1), or simply
        # range(P-1,i).  To make sure we don't try an
        # index less than zero, replace P-1 with
        # max(P-1,0)
        for j in range(max(P-1,0),i):
            if Q[j] > P:
                moves += 1
    print(moves)

if __name__ == '__main__':
    t = int(input().strip())

    for t_itr in range(t):
        n = int(input().strip())

        q = list(map(int, input().rstrip().split()))

        minimumBribes(q)
```