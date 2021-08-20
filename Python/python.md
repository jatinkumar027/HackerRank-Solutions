# Python

## 001 Say "Hello, World!" With Python

```python
print("Hello, World!")
```
## 002 Python If-Else

```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input().strip())  
if n%2==0:
    if n>2 and n<5:
        print("Not Weird")
    elif n>6 and n<=20:
        print("Weird")    
    elif n>20 and n<=100:
        print("Not Weird")
else:
    print("Weird")           
```
## 003 Arithmetic Operators

```python
if __name__ == '__main__':
    a = int(input())
    b = int(input())
print(a+b)
print(a-b)
print(a*b)    
```
## 004 Python: Division

```python
if __name__ == '__main__':
    a = int(input())
    b = int(input())
```
## 005 Loops

```python
if __name__ == '__main__':
    n = int(input())
    for i in range(0,n):
        print(i*i)
```
## 006 Write a function

```python
def is_leap(year):
    leap = False
    if(year%100==0):
        if(year%400==0):
            leap=True
        else:
            leap=False
    elif(year%4==0):
        leap=True           
    
    return leap
```
## 007 Print Function

```python
if __name__ == '__main__':
    n = int(input())
    for i in range(1,n+1):
        print(i,end='')
```
## 008 List Comprehensions

```python
x,y,z,n = [int(input()) for i in range(4)]
print ([[a,b,c] for a in range(x+1) for b in range(y+1) for c in range(z+1) if a+b+c != n])
```
## 009 Find the Runner-Up Score!

```python
n = int(input())
arr = map(int, input().split())
arr = list(set(list(arr)))
ar = len(arr)
arr = sorted(arr)
print(arr[ar-2])
```
## 010 Nested Lists

```python
n=int(input())
arr = [[input(), float(input())] for _ in range(0,n)]
arr = sorted(arr, key=lambda x: x[1])
names = [x[0] for x in arr]
marks = [x[1] for x in arr]
minmarks = min(marks)

while marks[0]==minmarks:
    marks.remove(marks[0])       
    names.remove(names[0])     
     
allnames = [names[i] for i in range(0,len(marks)) if marks[i]==min(marks)]
allnames = sorted(allnames)

for x in allnames:
    print(x)
```
## 011 Finding the percentage

```python
n=int(input())
pairs = dict()
for i in range(0,n):
    stringlist = input().split()
    pairs[stringlist[0]]=[float(stringlist[1]),float(stringlist[2]),float(stringlist[3])]
name = input()
for key, value in pairs.items():
    if key==name:
        arr=value
        break
print(f"{((sum(arr))/len(arr)):.2f}")   
```
## 012 Lists

```python
if __name__ == '__main__':
    n = int(input())
    flist=list()
    while n>0:
        command=input()
        lst=command.split()
        if lst[0]=='insert':
            flist.insert(int(lst[1]),int(lst[2]))
        if lst[0]=='print':
            print(flist)
        if lst[0]=='remove':
            for iter in lst[1:]:
                iter=int(iter)
                flist.remove(iter)
        if lst[0]=='append':
            for iter in lst[1:]:
                iter=int(iter)
                flist.append(iter)
        if lst[0]=='sort':
            flist.sort()
        if lst[0]=='pop':
            flist.pop()
        if lst[0]=='reverse':
            flist.reverse()
        n=n-1
```
## 013 Tuples

```python
if __name__ == '__main__':
    n = int(input())
    ilist = map(int, input().split())
    print(hash(tuple(ilist)))
```
## 014 sWAP cASE

```python
def swap_case(s):
    stringlist=s.split()
    mainlist = list()
    mystring=''
    for x in stringlist:
        for y in x:
            if(y.isupper()):
                y=y.lower()
                mystring=mystring+y
            elif(y.islower()):
                y=y.upper()      
                mystring=mystring+y                                                     
            else:
                mystring=mystring+y
                continue
        mystring=mystring+' '            
        mainlist.append(mystring)
        mystring=''    
    return mystring.join(mainlist)
```
## 015 String Split and Join

```python
def split_and_join(line):
    words=line.split()
    hyph="-".join(words)
    return hyph
```
## 016 What's Your Name?

```python
def print_full_name(a, b):
    print("Hello",a,b +"! You just delved into python.")
```
## 017 Mutations

```python
def mutate_string(string, position, character):
    lst=list(string)
    lst[position]=character
    string=''.join(lst)
    return string
```
## 018 Find a string

```python
def count_substring(string, sub_string):
    results = 0
    sub_len = len(sub_string)
    for i in range(len(string)):
        if string[i:i+sub_len] == sub_string:
            results += 1
    return results
```
## 019 String Validators

```python
if __name__ == '__main__':
    s = input()
    print (any(ch.isalnum() for ch in s))
    print (any(ch.isalpha() for ch in s))
    print (any(ch.isdigit() for ch in s))
    print (any(ch.islower() for ch in s))
    print (any(ch.isupper() for ch in s))   
```
## 020 Text Alignment

```python
#Replace all ______ with rjust, ljust or center. 

thickness = int(input())#This must be an odd number
c = 'H'

#Top Cone
for i in range(thickness):
    print((c*i).rjust(thickness-1)+c+(c*i).ljust(thickness-1))


#Top Pillars
for i in range(thickness+1):
    print((c*thickness).center(thickness*2)+(c*thickness).center(thickness*6))

#Middle Belt
for i in range((thickness+1)//2):
    print((c*thickness*5).center(thickness*6))    

#Bottom Pillars
for i in range(thickness+1):
    print((c*thickness).center(thickness*2)+(c*thickness).center(thickness*6))    

#Bottom Cone
for i in range(thickness):
    print(((c*(thickness-i-1)).rjust(thickness)+c+(c*(thickness-i-1)).ljust(thickness)).rjust(thickness*6))
```
## 021 Text Wrap

```python
def wrap(string, max_width):
    return (textwrap.fill(string, max_width))
```
## 022 Designer Door Mat

```python
c='.|.'
string_input = input()
stringlist = string_input.split()
N, M = int(stringlist[0]), int(stringlist[1]), 
l, b = int(N/2), int(M/2)

for i in range(l):
    print((c*i).rjust(b-1, '-') + c + (c*i).ljust(b-1, '-'))
print('WELCOME'.center(M, '-'))    
for i in range(l-1,-1,-1):
    print((c*i).rjust(b-1, '-') + c + (c*i).ljust(b-1, '-'))
```
## 023 String Formatting

```python
def print_formatted(number):
    l1 = len(bin(number)[2:])
   
    for i in range(1,number+1):
        print(str(i).rjust(l1,' '),end=" ")
        print(oct(i)[2:].rjust(l1,' '),end=" ")
        print(((hex(i)[2:]).upper()).rjust(l1,' '),end=" ")
        print(bin(i)[2:].rjust(l1,' '),end=" ")
        print("")
```
## 024 Alphabet Rangoli

```python
import string
alpha = string.ascii_lowercase

def print_rangoli(n):
    L = []
    for i in range(n):
        s = "-".join(alpha[i:n])
        L.append((s[::-1]+s[1:]).center(4*n-3, "-"))
    print('\n'.join(L[:0:-1]+L))
```
## 025 Capitalize!

```python
def solve(s):
    for iter in s.split():
       s=s.replace(iter,iter.capitalize())  
    return s
```
## 026 The Minion Game

```python
def minion_game(s):
    vowels = 'AEIOU'
    kevsc = 0
    stusc = 0
    for i in range(len(s)):
        if s[i] in vowels:
            kevsc += (len(s)-i)
        else:
            stusc += (len(s)-i)

    if kevsc > stusc:
        print ("Kevin", kevsc)
    elif kevsc < stusc:
        print ("Stuart", stusc)
    else:
        print ("Draw")
```
## 027 Merge the Tools!

```python
import textwrap
from collections import OrderedDict 

def merge_the_tools(string, k):
    stringlist = textwrap.wrap(string, k)
    def setfunction(s):
        return("".join(OrderedDict.fromkeys(s)))
    setlist = list(map(setfunction, stringlist ))
    print(*setlist, sep="\n")
```
## 028 itertools.product()

```python
from itertools import product

alist=list(map(int, input().split()))
blist=list(map(int, input().split()))

for x in list(product(alist, blist)):
    print(x, end=' ')
```
## 029 collections.Counter()

```python
from collections import Counter

mysum = 0
n = int(input())
shoesize = Counter((list(map(int, input().split()))))
cust = int(input())
for i in range(0,cust):
    sizeandprice = list(map(int, input().split()))
    size, price = sizeandprice[0], sizeandprice[1]
    
    if shoesize[size] != 0 :
        mysum = mysum + price
        shoesize[size] = shoesize[size] - 1

print(mysum)
```
## 030 itertools.permutations()

```python
from itertools import permutations
alist = input().split()
s, k=alist[0], int(alist[1])

permlist = sorted(list(permutations(s,k)))

for x in permlist:
    for i in x:
        print(i,end='')
    print()
```
## 031 Polar Coordinates

```python
import cmath

z = complex(input())
print(abs(z))

print(cmath.phase(z))
```
## 032 Introduction to Sets

```python
def average(array):
    myuniquelist = list(set(array))
    myavg = sum(myuniquelist)/(len(myuniquelist))
    return myavg
```
## 033 DefaultDict Tutorial

```python
from collections import defaultdict
n, m = map(int, input().split())
d=defaultdict(list)

for i in range(1,n+1):
    d[input()].append(str(i))
       
for i in range(m):
    print (' '.join(d[input()]) or -1)
```
## 034 Calendar Module

```python
import calendar
month, day, year = map(int, input().split())
weekday =  calendar.weekday(year, month, day)

print(calendar.day_name[weekday].upper())
```
## 035 Exceptions

```python
n = int(input())
for i in range(0,n):
    try:
        a, b = map(int, input().split())
        c = a//b
        print(c)
    except Exception as e:
        print('Error Code:',e)
```
## 036 Collections.namedtuple()

```python
from collections import namedtuple
n, add, Spreadsheet = int(input()), 0, namedtuple('Spreadsheet',input())

for i in range(0,n):
    add = add + int(Spreadsheet(*(input().split())).MARKS)
print(round(add/n, 2))
```
## 037 Time Delta

```python

import math
import os
import random
import re
import sys

def time_delta(t1, t2):
    from datetime import datetime as dt
    fmt = '%a %d %b %Y %H:%M:%S %z'
    return str(int(abs((dt.strptime(t1, fmt) - 
                   dt.strptime(t2, fmt)).total_seconds())))
        
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        t1 = input()

        t2 = input()
        

        delta = time_delta(t1, t2)

        fptr.write(delta + '\n')

    fptr.close()
```
## 038 Find Angle MBC

```python
import math
P, B = int(input()), int(input())
degree=chr(176)
print(str(int(round(math.degrees(math.atan2(P,B)))))+degree)                                #for DEGREE symbol
```
## 039 No Idea!

```python
n, m = map(int, input().split())
arr = input().split()
A = set(input().split())
B = set(input().split())
    
print(sum((i in A) - (i in B) for i in arr))
```
## 040 Collections.OrderedDict()

```python
from collections import OrderedDict

mydict = OrderedDict()

n = int(input())
for i in range(n):
    item, space, quantity = input().rpartition(' ')
    mydict[item] = mydict.get(item, 0) + int(quantity)
    
for item, quantity in mydict.items():
    print(item, quantity) 
```
## 041 Symmetric Difference

```python
m = int(input())
a = set(map(int, input().split()))
n = int(input())
b = set(map(int, input().split()))

sym = a.difference(b).union(b.difference(a))

print(*sorted(sym), sep='\n')
```
## 042 itertools.combinations()

```python
from itertools import combinations

string, n = input().split()
n = int(n) + 1
for i in range(1,n):
    print(*map(''.join, combinations(sorted(string), i)), sep='\n')
```
## 043 Incorrect Regex

```python
import re

def isvalidregex(regex):
    try: re.compile(regex)
    except re.error: return False
    return True

for i in range(int(input())):
    print(isvalidregex(input()))
```
## 044 Set.add()

```python
n = int(input())
s = set()
for i in range(0, n):
    s.add(input())
 
print(len(s))
```
## 045 itertools.combinations_with_replacement()

```python
from itertools import combinations_with_replacement
s = input().split()
string, n = sorted(s[0]), int(s[1])

print(*map(''.join, combinations_with_replacement(string, n)),  sep='\n')
```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
## 0

```python

```
