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
## 046 Word Order

```python
from collections import Counter
n = int(input())
mylist = []
for i in range(0,n):
    mylist.append(input())
x = Counter(mylist)    
print(len(x.values()))
print(*x.values())
```
## 047 Set .discard(), .remove() & .pop()

```python
n = int(input())
s = set(map(int, input().split()))
m = int(input())

for i in range(0,m):
    myinputlist = input().split()
    if(myinputlist[0] == 'pop'):
        try:
            s.pop()
        except:
            pass    
    elif(myinputlist[0] == 'discard'):
        s.discard(int(myinputlist[1]))
    elif(myinputlist[0] == 'remove'):
        try:
            s.remove(int(myinputlist[1])) 
        except:
            pass     
print(sum(s))
```
## 048 Collections.deque()

```python
from collections import deque

d = deque()
n = int(input())

for i in range(0, n):
    string = input().split()
    if(string[0] == 'append'):
        d.append(int(string[1]))
    elif(string[0] == 'appendleft'):
        d.appendleft(int(string[1]))
    elif(string[0] == 'pop'):
        d.pop()
    elif(string[0] == 'popleft'):
        d.popleft()
print(*d)
```
## 049 Compress the String!

```python
from itertools import groupby

L = input()
key_func = lambda x: x[0]
  
for key, group in  groupby(L, key_func):
    print(tuple([len(list(group)), int(key)]), end = ' ')
```
## 050 Company Logo

```python
import math
import os
import random
import re
import sys
from collections import Counter

temp = None

if __name__ == '__main__':
    s = list(input())
    mydict = Counter(s)
    sorted_string = sorted(mydict.items(), key=lambda x: (-x[1],x[0]))[0:3]
    if len(set(dict(sorted_string).values())) == 1 :
        sorted_string = sorted(mydict.items(), key=lambda x: (-x[1],x[0])) [0:3]
    
    for x, y in sorted_string:
        print(x, y)
```
## 051 Set .union() Operation

```python
n = int(input())
s1 = set(input().split())
m  = int(input())
s2 = set(input().split())

print(len(s1.union(s2)))
```
## 052 Piling Up!

```python
from collections import deque

for _ in range(int(input())):  
    _, queue =input(), deque(map(int, input().split()))
    
    for cube in reversed(sorted(queue)):
        if queue[-1] == cube: queue.pop()
        elif queue[0] == cube: queue.popleft()
        else:
            print('No')
            break
    else: print('Yes')
```
## 053 Triangle Quest 2

```python
for i in range(1,int(input())+1): #More than 2 lines will result in 0 score. Do not leave a blank line also
    print(((10**i)//9)**2)
```
## 054 Iterables and Iterators

```python
from itertools import combinations

_,s,n = input(),input().split(),int(input())
t = list(combinations(s,n))
f = sum((1 for i in t if 'a' in i))
print(f/len(t))
```
## 055 Set .intersection() Operation

```python
n = int(input())
s1 = set(input().split())
m = int(input())
print(len(s1.intersection(input().split())))
```
## 056 Mod Divmod

```python
n, m = int(input()), int(input())
print(int(n/m), n%m, tuple([int(n/m), n%m]), sep = '\n')  
```
## 057 Power - Mod Power

```python
a, b, m = int(input()), int(input()), int(input())

print(int(pow(a,b)))
print(int(pow(a,b,m)))
```
## 058 Maximize It!

```python
from itertools import product
K, M = map(int, input().split())
N = (list(map(int, input().split()))[1:] for _ in range(K))

results = map(lambda x: sum(i**2 for i in x)%M, product(*N))
print(max(results))
```
## 059 Set .difference() Operation

```python
n = int(input())
s1 = set(input().split())
m = int(input())
print(len(s1.difference(input().split())))
```
## 060 Integers Come In All Sizes

```python
print(pow(int(input()), int(input())) + pow(int(input()), int(input())))
```
## 061 Set .symmetric_difference() Operation

```python
n = int(input())
s1 = set(input().split())
m = int(input())

print(len(s1.symmetric_difference(input().split())))
```
## 062 Set Mutations

```python
n, s, t = int(input()), set(map(int, input().split())), int(input()) 


for _ in range(t):
    m = input().split()
    func, length = m[0], int(m[1])
    h = set(map(int, input().split()))
    
    if(func == 'intersection_update'):
        s.intersection_update(h)
    elif(func == 'update'):
        s.update(h)
    elif(func == 'symmetric_difference_update'):
        s.symmetric_difference_update(h)
    elif(func == 'difference_update'):
        s.difference_update(h) 
    
print(sum(s))
```
## 063 Triangle Quest

```python
for i in range(1,int(input())): #More than 2 lines will result in 0 score. Do not leave a blank line also
    print((10**i // 9)*i )
```
## 064 The Captain's Room

```python
from collections import Counter
k = int(input())
rooms = list(map(int, input().split()))

roomcount = Counter(rooms)

for key, value in roomcount.items():
    if(value!=k):
        print(key)
        break
```
## 065 Check Subset

```python
t = int(input())

for i in range(0, t):
    _ = input()
    A = set(map(int,input().split()))
    __ = input()
    B = set(map(int,input().split()))
    print(A.issubset(B))
```
## 066 Check Strict Superset

```python
A = set(map(int, input().split()))
t = int(input())

for i in range(t):
    B = set(map(int, input().split()))
    if A.issuperset(B) is False:
        print(False)
        break 
else:
    print(True)
```
## 067 Classes: Dealing with Complex Numbers

```python
class Complex(object):
    def __init__(self, real, imag):
        self.real = real
        self.imag = imag

    def __add__(self, n):
        comp = n + complex(self.real, self.imag)
        return Complex(comp.real, comp.imag)

    def __sub__(self, n):
        comp = n - complex(self.real, self.imag)
        return Complex(comp.real, comp.imag)

    def __mul__(self, n):
        comp = n * complex(self.real, self.imag)
        return Complex(comp.real, comp.imag)

    def __truediv__(self, n):
        comp = n / complex(self.real, self.imag)
        return Complex(comp.real, comp.imag)

    def mod(self):
        comp = complex(math.sqrt(self.real**2 + self.imag**2))
        return Complex(comp.real, comp.imag)

    def __str__(self):
        if self.imag == 0:
            result = "{:.2f}+0.00i".format(self.real)
        elif self.real == 0:
            if self.imag >= 0:
                result = "0.00+{:.2f}i".format(self.imag)
            else:
                result = "0.00-{:.2f}i".format(abs(self.imag))
        elif self.imag > 0:
            result = "{:.2f}+{:.2f}i".format(self.real, self.imag)
        else:
            result = "{:.2f}-{:.2f}i".format(self.real, abs(self.imag))
        return result
```
## 068 Class 2 - Find the Torsional Angle

```python
class Points(object):
    def __init__(self, x, y, z):
        self.x=x
        self.y=y
        self.z=z

    def __sub__(self, no):
        return Points(no.x-self.x, no.y-self.y, no.z-self.z)

    def dot(self, no):
        return self.x*no.x+self.y*no.y+self.z*no.z

    def cross(self, no):
        return Points(self.y*no.z-self.z*no.y,
             self.z*no.x-self.x*no.z,
             self.x*no.y-self.y*no.x)

    def absolute(self):
        return pow((self.x ** 2 + self.y ** 2 + self.z ** 2), 0.5)
```
## 069 Zipped!

```python
n, x = map(int, input().split())
sheet = []
for _ in range(x):
    sheet.append( map(float, input().split()) )

for i in zip(*sheet):
    print(sum(i)/len(i))
```
## 070 Input()

```python
s =  list(map(int, input().split()))
x, k = s[0], s[1]
poly = input()

print(eval(poly) == k)
```
## 071 Python Evaluation

```python
var = input()
eval(var)
```
## 072 Athlete Sort

```python
import math
import os
import random
import re
import sys



if __name__ == '__main__':
    nm = input().split()

    n = int(nm[0])

    m = int(nm[1])

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))

    k = int(input())
    for item in sorted(arr, key = lambda x: x[k]):
        print(*item)
```
## 073 Any or All

```python
x, N = int(input()), input().split()
print(all(int(n) > 0 for n in N) and any(n==n[::-1] for n in N))
```
## 074 ginortS

```python
def getKey(x):
    if x.islower():
        return(1,x)
    elif x.isupper():
        return(2,x)
    elif x.isdigit() :
        if int(x)%2==1:
            return(3,x)
        else :
            return(4,x)

print(*sorted(input(),key=getKey),sep='')
```
## 075 Detect Floating Point Number

```python
import re
pattern = '^[+-]?[0-9]*[.][0-9]+$'

n = int(input())
for i in range(n):
    x = input()
    print(bool(re.match(pattern, x)))
```
## 076 Map and Lambda Function

```python
cube = lambda x: pow(x,3)# complete the lambda function 

def fibonacci(n):
    # return a list of fibonacci numbers
    lis = [0,1]
    for i in range(2,n):
        lis.append(lis[i-2] + lis[i-1])
    return(lis[0:n])  
```
## 077 Re.split()

```python
regex_pattern = r"[,.]"	# Do not delete 'r'.
```
## 078 Validating Email Addresses With a Filter

```python
import re
def fun(s):
    # return True if s is a valid email, else return False
    pattern = '^[a-zA-Z0-9_-]+[@][a-zA-Z0-9]+[.][a-zA-Z]{1,3}$'
    if(re.match(pattern, s)):
        return True
    else:
        return False
```
## 079 Group(), Groups() & Groupdict()

```python
import re
m = re.search(r"([a-z0-9])\1+", input())
print(m.group(1) if m else -1)
```
## 080 Reduce Function

```python
def product(fracs):
    t = reduce(lambda x,y : x*y, fracs, 1)# complete this line with a reduce statement
    return t.numerator, t.denominator
```
## 081 Re.findall() & Re.finditer()

```python
import re
pattern = r'(?<=[QWRTYPSDFGHJKLZXCVBNMqwrtypsdfghjklzxcvbnm])([AEIOUaeiou]{2,})(?=[QWRTYPSDFGHJKLZXCVBNMqwrtypsdfghjklzxcvbnm])'
a = re.findall(pattern, input())
print('\n'.join(a or ['-1']))
```