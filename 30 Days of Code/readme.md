# 30 Days of Code

## 001 Day 0: Hello, World.
```python
# Read a full line of input from stdin and save it to our dynamically typed variable, input_string.
input_string = input()

# Print a string literal saying "Hello, World." to stdout.
print('Hello, World.')

# TODO: Write a line of code here that prints the contents of input_string to stdout.
print(input_string)
```
## 002 Day 1: Data Types
```python

# Declare second integer, double, and String variables.
inte = int(input())
floate = float(input())
stringe = input()

# Read and save an integer, double, and String to your variables.

# Print the sum of both integer variables on a new line.
print(inte + i)

# Print the sum of the double variables on a new line.
print(floate+d)

# Concatenate and print the String variables on a new line
print(s+stringe)
# The 's' variable above should be printed first.
```
## 003 Day 2: Operators
```python
import math
import os
import random
import re
import sys

# Complete the solve function below.
def solve(meal_cost, tip_percent, tax_percent):
    tip = (tip_percent/100) * meal_cost
    tax = (tax_percent/100) * meal_cost
    totalcost = meal_cost + tip + tax
    print(round(totalcost))

if __name__ == '__main__':
    meal_cost = float(input())

    tip_percent = int(input())

    tax_percent = int(input())

    solve(meal_cost, tip_percent, tax_percent)
```
## 004 Day 3: Intro to Conditional Statements
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    N = int(input())
    
    if(N%2!=0):
        print('Weird')
    else:
        if(N>=2 and N<=5):
            print('Not Weird')
        elif(N>=6 and N<=20):
            print('Weird')
        elif(N>20):
            print('Not Weird')
```
## 005 Day 4: Class vs. Instance
```python
class Person:
    def __init__(self,initialAge):
        self.age = 0
        if(initialAge < 0):
            age = 0
            print('Age is not valid, setting age to 0.')
        else:
            self.age = initialAge
        
        # Add some more code to run some checks on initialAge
    def amIOld(self):
        if(self.age< 13):
            print('You are young.')
        elif(self.age>= 13 and self.age<18):
            print('You are a teenager.')    
        else:
            print('You are old.')    
        # Do some computations in here and print out the correct statement to the console
    def yearPasses(self):
        self.age = self.age + 1
        # Increment the age of the person in here
```
## 006 Day 5: Loops
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input())
    for i in range(1,11):
        print(str(n)+" x "+str(i)+" = "+str(n*i))
```
## 007 Day 6: Let's Review
```python
n = int(input())
for i in range(0,n):
    even = ''
    odd  = ''
    mystring = list(input())
    for i in range(0,len(mystring)):
        if(i%2==0):
            even = even + mystring[i]
        else:
            odd = odd + mystring[i]        
    print(even,odd)
```
## 008 Day 7: Arrays
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input())

    arr = list(map(int, input().rstrip().split()))
    arr.reverse()
    print(' '.join(map(str, arr)))
```
## 009 Day 8: Dictionaries and Maps
```python
n = int(input())
phonebook = dict()
for i in range(0,n):
    myinputlist = input().split()
    key = myinputlist[0]
    value = int(myinputlist[1])
    phonebook[key] = value
    
try: 
    while True: 
        inp = input() 
        if inp != "": 
            try:
                print(inp+'='+str(phonebook[inp]))
            except:
                print('Not found')       
        else: 
            break 
except EOFError: 
    pass 
```
## 010 Day 9: Recursion 3
```python
import math
import os
import random
import re
import sys

# Complete the factorial function below.
def factorial(n):
    if(n==1):
        return 1
    else:
        return(n*factorial(n-1))

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    result = factorial(n)

    fptr.write(str(result) + '\n')

    fptr.close()
```
## 011 Day 10: Binary Numbers
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input())
    Binary = [int(i) for i in str(bin(n).replace("0b", ""))]
    count = 0
    mymax = list()
    for i in range(0, len(Binary)):
        if(Binary[i]==1):
            count = count + 1
        else:
            mymax.append(count)
            count = 0
    mymax.append(count)        
    print(max(mymax)) 
```
## 012 Day 11: 2D Arrays
```python
import math
import os
import random
import re
import sys



if __name__ == '__main__':
    arr = []
    maxlist = []
    for _ in range(6):
        arr.append(list(map(int, input().rstrip().split())))   
    for i in range(0,4):
        for j in range(0,4):
            maxlist.append((arr[i][j] + arr[i][j+1] + arr[i][j+2]) + 
                            (arr[i+1][j+1]) +
                           (arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2] ) ) 
    print(max(maxlist))
```
## 013 Day 12: Inheritance
```python
class Student(Person):
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def __init__(self, firstName, lastName, idNumber, scores):
        Person.__init__(self, firstName, lastName, idNumber) 
        self.scores = scores  

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate(self):
        myavg = (sum(self.scores))/len(self.scores)
        if(myavg<=100 and myavg>=90):
            return "O"
        elif(myavg<=90 and myavg>=80):
            return "E"
        elif(myavg<=80 and myavg>=70):
            return "A"
        elif(myavg<=70 and myavg>=55):
            return "P"    
        elif(myavg<=55 and myavg>=40):
            return "D"
        elif(myavg<40):
            return "T" 
```
## 014 Day 13: Abstract Classes
```python
class MyBook(Book):
    def __init__(self, title, author, price):
        Book.__init__(self, title, author)
        self.price = price
    def display(self):
        print("Title:", self.title)
        print("Author:", self.author)
        print("Price:", self.price)
```
## 015 Day 14: Scope
```python
def computeDifference(self):
    self.maximumDifference = max(self.__elements) - min(self.__elements) 
```
## 016 Day 15: Linked List
```python
def insert(self,head,data): 
    #Complete this method
        if head is None:
            head = Node(data)
            self.tail = head
        else: 
            node = Node(data)
            self.tail.next = node
            self.tail = node
        return head
```
## 017 Day 16: Exceptions - String to Integer
```python
'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}



function main() {
    var S = readLine();
    try{
        var ans = parseInt(S) || ans.toString();
        console.log(parseInt(S));
    }
    catch(e){
        console.log("Bad String");
        }

}
```
## 018 Day 17: More Exceptions
```python
class Calculator:
    def power(self, n, p):
        if n < 0 or p < 0:
            raise Exception("n and p should be non-negative")
        else:
            return n**p
```
## 019 Day 18: Queues and Stacks
```python
class Solution:
    # Write your code here
    def __init__(self):
        self.stack = []
        self.queue = []
        
    def pushCharacter(self, ch):
        self.stack.append(ch)
    def enqueueCharacter(self, ch):
        self.queue.append(ch)
    
    def popCharacter(self):
        return self.stack.pop(-1)
    def dequeueCharacter(self):
        return self.queue.pop(0)
```
## 020 Day 19: Interfaces
```python
class Calculator(AdvancedArithmetic):
    def divisorSum(self, n):
        i=1
        mysum = 0
        while(i<=n):
            if(n%i==0):
                mysum = mysum + i
            i=i+1  
        return mysum
```
## 021 Day 20: Sorting
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input().strip())

    a = list(map(int, input().rstrip().split()))

    # Write your code here
    totalswaps = 0 
    for i in range(0,n-1):
    # Track number of elements swapped during a single array traversal
        numberOfSwaps = 0
        
        for j in range(0,n-1):
        # Swap adjacent elements if they are in decreasing order
            if (a[j] > a[j + 1]):
                temp = a[j]
                a[j] = a[j+1]
                a[j+1] = temp
                numberOfSwaps += 1
                totalswaps += 1
        # If no elements were swapped during a traversal, array is sorted
        if (numberOfSwaps == 0):
            break
                
    print("Array is sorted in "+str(totalswaps)+" swaps.")
    print("First Element:",a[0])
    print("Last Element:",a[n-1])
```
## 022 Day 21: Generics
```c++
template <class T>
void printArray(vector<T> vec){
   for(int i=0; i<vec.size(); i++)
   cout<<vec[i]<<endl;
}
```
## 023 Day 22: Binary Search Trees
```python
def getHeight(self,root):
    if root == None:
        return -1
    return 1 + max(self.getHeight(root.left), self.getHeight(root.right))
```
## 024 Day 23: BST Level-Order Traversal
```python
def levelOrder(self,root):
    #Write your code here
    queue = [root] if root else []

    while queue:
        node = queue.pop()
        print(node.data, end=" ")
        
        if node.left: queue.insert(0,node.left)
        if node.right: queue.insert(0,node.right)
```
## 025 Day 24: More Linked Lists
```python
def removeDuplicates(self,head):
    #Write your code here
    current = head
    while current.next:
        if current.data == current.next.data:
            current.next = current.next.next
        else:
            current = current.next
    return head
```
## 026 Day 25: Running Time and Complexity
```python
n = int(input())
for _ in range(n):
    num = int(input())
    if(num == 1):
        print("Not prime")
    else:
        if(num % 2 == 0 and num > 2):
            print("Not prime")
        else:
            for i in range(3, int(num**(1/2))+1, 2):
                if num % i == 0:
                    print("Not prime")
                    break
            else:
                print("Prime")
```
## 027 Day 26: Nested Logic
```python
rd, rm, ry = [int(x) for x in input().split(' ')]
ed, em, ey = [int(x) for x in input().split(' ')]

if (ry, rm, rd) <= (ey, em, ed):
    print(0)
elif (ry, rm) == (ey, em):
    print(15 * (rd - ed))
elif ry == ey:
    print(500 * (rm - em))
else:
    print(10000)
```
## 028 Day 27: Testing
```python
class TestDataEmptyArray():
    @staticmethod
    def get_array():
        arr = []
        return arr
class TestDataUniqueValues():
    @staticmethod
    def get_array():
        arr = [1,2,3,4]
        return arr
    @staticmethod
    def get_expected_result():
        return 0

class TestDataExactlyTwoDifferentMinimums():
    @staticmethod
    def get_array():
        arr = [1,1,2]
        return arr 
    @staticmethod
    def get_expected_result():
        return 0
```
## 029 Day 28: RegEx, Patterns, and Intro to Databases
```python
import math
import os
import random
import re
import sys

if __name__ == '__main__':
    N = int(input().strip())
    arr = []
    for N_itr in range(N):
        first_multiple_input = input().rstrip().split()

        firstName = first_multiple_input[0]

        emailID = first_multiple_input[1]
        x = re.search("[a-z]+@gmail\\.com$", emailID)
        if(x):
            arr.append(firstName)
    print(*sorted(arr),sep='\n') 
```
## 030 Day 29: Bitwise AND
```python
import math
import os
import random
import re
import sys

# Complete the 'bitwiseAnd' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER N
#  2. INTEGER K

def bitwiseAnd(N, K):
    # Write your code here
    if ((K-1) | K) <= N :
        return K-1
    else :
        return K-2

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input().strip())

    for t_itr in range(t):
        first_multiple_input = input().rstrip().split()

        count = int(first_multiple_input[0])

        lim = int(first_multiple_input[1])

        res = bitwiseAnd(count, lim)

        fptr.write(str(res) + '\n')
        
    fptr.close()
```