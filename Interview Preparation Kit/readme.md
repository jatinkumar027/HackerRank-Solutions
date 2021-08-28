# The HackerRank Interview Preparation Kit

## Warm-Up Challenges

### 001 Sales by Match
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

### 002 Counting Valleys
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

### 003 Jumping on the Clouds
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
### 004 Repeated String
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

## Arrays 

### 001 2D Array - DS
```python
import math
import os
import random
import re
import sys

#
# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def hourglassSum(arr):
    # Write your code here
    n = len(arr)
    mylist = []
    for i in range(0, n-2):
        for j in range(0, n-2):
            mylist.append(arr[i][j] + arr[i][j+1] + arr[i][j+2]
            + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] +
            arr[i+2][j+2])
    return max(mylist)        

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    arr = []

    for _ in range(6):
        arr.append(list(map(int, input().rstrip().split())))

    result = hourglassSum(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
```
### 002 Arrays: Left Rotation
```python
import math
import os
import random
import re
import sys

#
# Complete the 'rotLeft' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER d
#

def rotLeft(a, d):
    return a[d:] + a[:d]
    # Write your code here

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    d = int(first_multiple_input[1])

    a = list(map(int, input().rstrip().split()))

    result = rotLeft(a, d)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
```
### 003 New Year Chaos
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

## Dictionaries and Hashmaps

### 001 Sales by Match
```python
#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'twoStrings' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. STRING s1
#  2. STRING s2
#

def twoStrings(s1, s2):
    # Write your code here
    if set(s1) & set(s2):
        return "YES"
    return "NO"

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    q = int(input().strip())

    for q_itr in range(q):
        s1 = input()

        s2 = input()

        result = twoStrings(s1, s2)

        fptr.write(result + '\n')

    fptr.close()

```

### 002 Hash Tables: Ransom Note

```python
#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'checkMagazine' function below.
#
# The function accepts following parameters:
#  1. STRING_ARRAY magazine
#  2. STRING_ARRAY note
#
from collections import Counter
def checkMagazine(magazine, note):
    # Write your code here
    countOfMagazine = Counter(magazine)
    listofNote = note
    length = len(listofNote)
    for word in listofNote:
        if word in countOfMagazine and countOfMagazine[word]!=0:
            countOfMagazine[word] -= 1
            length -= 1
    if(length==0):
        print("Yes")
    else:
        print("No")
    

if __name__ == '__main__':
    first_multiple_input = input().rstrip().split()

    m = int(first_multiple_input[0])

    n = int(first_multiple_input[1])

    magazine = input().rstrip().split()

    note = input().rstrip().split()

    checkMagazine(magazine, note)
```

## Sorting

### 001 Sorting: Bubble Sort
```python
#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'countSwaps' function below.
#
# The function accepts INTEGER_ARRAY a as parameter.
#

def countSwaps(a):
    count = 0
    # Write your code here
    for i in range(len(a)):
        for j in range(n-i-1):
            if a[j] > a[j+1]:
                a[j], a[j+1] = a[j+1],a[j]
                count +=1
    print("Array is sorted in {c} swaps.".format(c=count))
    print("First Element:", a[0])
    print("Last Element:", a[len(a)-1])


if __name__ == '__main__':
    n = int(input().strip())

    a = list(map(int, input().rstrip().split()))

    countSwaps(a)
```

### 002 Mark and Toys

```python
#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'maximumToys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY prices
#  2. INTEGER k
#

def mergeSort(arr):
    if len(arr)>1:
        
        mid = len(arr)//2
        
        L = arr[:mid]
        R = arr[mid:]
        
        mergeSort(L)
        mergeSort(R)
        
        i=j=k=0
        
        while i<len(L) and j< len(R):
            if L[i]<R[j]:
                arr[k] = L[i]
                i+=1
            else:
                arr[k] = R[j]
                j+=1
            k+=1
            
        while i<len(L):
            arr[k] = L[i]
            i+=1
            k+=1
        while j<len(R):
            arr[k] = R[j]
            j+=1
            k+=1
    return arr

def maximumToys(prices, k):
    # Write your code here
    addPrice, count = 0, 0
    sortedPrices = mergeSort(prices)
    for price in sortedPrices:
        if(addPrice+price<=k):
            addPrice+=price
            count+=1
    return count
            
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    k = int(first_multiple_input[1])

    prices = list(map(int, input().rstrip().split()))

    result = maximumToys(prices, k)

    fptr.write(str(result) + '\n')

    fptr.close()
```