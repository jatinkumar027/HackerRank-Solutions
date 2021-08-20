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
