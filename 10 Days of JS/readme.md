# 10 Days of JS

## 001 Day 0: Hello, World!
```js
function greeting(parameterVariable) {
    // This line prints 'Hello, World!' to the console:
    console.log('Hello, World!');
    console.log(parameterVariable);
```
## 002 Day 0: Data Types
```js
function performOperation(secondInteger, secondDecimal, secondString) {
    // Declare a variable named 'firstInteger' and initialize with integer value 4.
    const firstInteger = 4;
    
    // Declare a variable named 'firstDecimal' and initialize with floating-point value 4.0.
    const firstDecimal = 4.0;
    
    // Declare a variable named 'firstString' and initialize with the string "HackerRank".
    const firstString = 'HackerRank ';
    
    // Write code that uses console.log to print the sum of the 'firstInteger' and 'secondInteger' (converted to a Number        type) on a new line.
    console.log(firstInteger+ parseInt(secondInteger, 10));
    
    
    // Write code that uses console.log to print the sum of 'firstDecimal' and 'secondDecimal' (converted to a Number            type) on a new line.
    console.log(firstDecimal+ parseFloat(secondDecimal));
    
    
    // Write code that uses console.log to print the concatenation of 'firstString' and 'secondString' on a new line. The        variable 'firstString' must be printed first.
    console.log(firstString+ secondString);
    
}
```
## 003 Day 1: Arithmetic Operators
```js
function getArea(length, width) {
    let area;
    area = length * width;
    // Write your code here
    
    return area;
}

/**
*   Calculate the perimeter of a rectangle.
*	
*	length: The length of the rectangle.
*   width: The width of the rectangle.
*   
*	Return a number denoting the perimeter of a rectangle.
**/
function getPerimeter(length, width) {
    let perimeter;
    // Write your code here
    perimeter = 2*(length+width);
    
    return perimeter;
}
```
## 004 Day 1: Functions
```js
function factorial(n){
    if(n==1){
        return 1;
    }
    else{
     return n*factorial(n-1);
    }
}
```
## 005 Day 1: Let and Const
```js
function main() {
    // Write your code here. Read input using 'readLine()' and print output using 'console.log()'.
    const PI = Math.PI;
    const r = +(readLine());
    
    // Print the area of the circle:
    console.log(PI*r*r);
    
    // Print the perimeter of the circle:
    console.log(2*PI*r);
```
## 006 Day 2: Conditional Statements: If-Else
```js
function getGrade(score) {
    let grade;
    // Write your code here
    if(score>25 && score<=30){
        grade = 'A';
    }
    else if(score>20 && score<=25){
        grade = 'B';
    }
    
    else if(score>15 && score<=20){
        grade = 'C';
    }

    else if(score>10 && score<=15){
        grade = 'D';
    }     

    else if(score>5 && score<=10){
        grade = 'E';
    }      

    else if(score>=0 && score<=5){
        grade = 'F';
    }    
    
    return grade;
}
```
## 007 Day 2: Conditional Statements: Switch
```js
function getLetter(s) {
    let letter;
    var firstletter = s[0];
    switch(true){
        case "aeiou".includes(firstletter):
            letter = 'A';
            break;
        case "bcdfg".includes(firstletter):
            letter = 'B';
            break;
        case "hjklm".includes(firstletter):
            letter = 'C';
            break;
        case "npqrstvwxyz".includes(firstletter):
            letter = 'D';      
            break; 
    }
    return letter;
}
```
## 008 Day 2: Loops
```js
function vowelsAndConsonants(s) {
    let vowels = 'aeiou';
    var consonants = '';
    for(let i=0; i<s.length; i++){
        if(vowels.includes(s[i])){
            console.log(s[i]);
        }
        else{
            consonants += s[i] + '\n' ;
        }
    }
    console.log(consonants.trim());
}
```
## 009 Day 3: Arrays
```js
function getSecondLargest(nums) {
    // Complete the function
    let first = nums[0];
    let second = -1;
    for(let i=0; i<nums.length; i++){
        if(nums[i]>first){
            second = first;
            first = nums[i];
        }
        if (nums[i] > second && nums[i] < first) {
            second = nums[i];
        }
    }
    return second;
}
```
## 010 Day 3: Try, Catch, and Finally
```js
function reverseString(s) {
    try{
        console.log(s.split('').reverse().join(''));
    }
    catch(e){
        console.log(e.message);
        console.log(s);
    }
}
```
## 011 Day 3: Throw
```js
function isPositive(a) {
    if(a>0){
        return 'YES';
    }
    else if(a==0){
        throw new Error('Zero Error');
    }
    else if(a<0){
        throw new Error('Negative Error');
    }   
}
```
## 012 Day 4: Create a Rectangle Object
```js
function Rectangle(a, b) {
    this.length = a;
    this.width = b;
    this.perimeter = 2*(a+b);
    this.area = a*b;
}
```
## 013 Day 4: Count Objects
```js
function getCount(objects) {
    var count = 0;
    for(let o of objects){
        if(o.x == o.y){
            count += 1;
        }
    }
    return count;
}
```
## 014 Day 4: Classes
```js
class Polygon{
    constructor(sides){
        this.sides = sides;
    }
    perimeter(){
        var sum = 0;
        for(let i=0; i<this.sides.length; i++){
            sum += this.sides[i];    
        }
        return sum;
    }
}
```
## 015 Day 5: Inheritance
```js

/*
 *  Write code that adds an 'area' method to the Rectangle class' prototype
 */

Rectangle.prototype.area = function(){
    return this.w * this.h;
}


/*
 * Create a Square class that inherits from Rectangle and implement its class constructor
 */

class Square extends Rectangle{
    constructor(s){
    super(s);
    this.h=s;
    this.w=s;
    }
}
```
## 016 Day 5: Template Literals
```js
function sides(literals, ...expressions) {
    // ES6 allows destructuring of arrays into multiple variables
    const [a, p] = expressions;
    // Perform this operation only once and assign to variable
    const root = Math.sqrt((p*p)-(16*a))
    const s1 = (p + root)/4;
    const s2 = (p - root)/4;
    // s2 will always be smaller because of the (-/+) above
    return ([s2, s1]);
}
```
## 017 Day 5: Arrow Functions
```js
function modifyArray(nums) {
    const modifiednums = nums.map(function(s) { 
        if(s%2==0){
            return s*2;
        }
        else{
            return s*3;
        }
        });
    return modifiednums;
}
```
## 018 Day 6: Bitwise Operators
```js
function getMaxLessThanK(n, k){
    
    var max = 0;
    for(let i=1; i<n; i++){
        for(let j=i+1; j<=n; j++){   
            if(Number(i&j)<k){
                if(Number(i&j)>max){
                    max = Number(i&j)
                }
            }
        }
    }
    return max;
}
```
## 019 Day 6: JavaScript Dates
```js
function getDayName(dateString) {
    let dayName;
    // Write your code here
    var date = new Date(dateString);
    var day_num = date.getDay();
    var weekdays = new Array(7);
        weekdays[0] = "Sunday";
        weekdays[1] = "Monday";
        weekdays[2] = "Tuesday";
        weekdays[3] = "Wednesday";
        weekdays[4] = "Thursday";
        weekdays[5] = "Friday";
        weekdays[6] = "Saturday";
    dayName = weekdays[day_num];    
    return dayName;
}
```
## 020 Day 7: Regular Expressions I
```js
function regexVar() {
    /*
     * Declare a RegExp object variable named 're'
     * It must match a string that starts and ends with the same vowel (i.e., {a, e, i, o, u})
     */
    
    
    /*
     * Do not remove the return statement
     */
    //  ^ => first item matches:
// () => stores matching value captured within
// [aeiou] => matches any of the characters in the brackets
// . => matches any character:
// + => for 1 or more occurrances (this ensures str length > 3)
// \1 => matches to previously stored match. 
    // \2 looks for matched item stored 2 instances ago 
    // \3 looks for matched item stored 3 ago, etc

//  $ ensures that matched item is at end of the sequence

    let re = /^([aeiou]).+\1$/;
    return re;
}
```
## 021 Day 7: Regular Expressions II
```js
function regexVar() {
    /*
     * Declare a RegExp object variable named 're'
     * It must match a string that starts with 'Mr.', 'Mrs.', 'Ms.', 'Dr.', or 'Er.', 
     * followed by one or more letters.
     */
    
    
    /*
     * Do not remove the return statement
     */
    let re = /^(Mr|Mrs|Ms|Dr|Er)(\.)([a-zA-Z])+$/
    
    return re;
}
```
## 022 Day 7: Regular Expressions III
```js
function regexVar() {
    /*
     * Declare a RegExp object variable named 're'
     * It must match ALL occurrences of numbers in a string.
     */
    
    
    /*
     * Do not remove the return statement
     */
    let re = /([0-9])+/g;
    return re;
}
```
## 023 Day 8: Create a Button
```js
var btn = document.createElement("Button");

btn.innerHTML = "0";
btn.id = "btn";
btn.className = "btnClass";

document.body.appendChild(btn);

btn.onclick = function() {
    btn.innerHTML++;
}
```
```css
.btnClass {
    width: 96px;
    height: 48px;
    font-size: 24px;
}
```
```html
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/button.css" type="text/css">
    </head>
    
    <body>
        <script src="js/button.js" type="text/javascript"></script>
    </body>
</html>
```
## 024 Day 8: Buttons Container
```js
var btns = document.createElement("div");
var btn1 = document.createElement("Button");
var btn2 = document.createElement("Button");
var btn3 = document.createElement("Button");
var btn4 = document.createElement("Button");
var btn5 = document.createElement("Button");
var btn6 = document.createElement("Button");
var btn7 = document.createElement("Button");
var btn8 = document.createElement("Button");
var btn9 = document.createElement("Button");

btns.id = "btns";

btn1.innerHTML = "1";
btn1.id = "btn1";
btn1.className = "btnClass";

btn2.innerHTML = "2";
btn2.id = "btn2";
btn2.className = "btnClass";

btn3.innerHTML = "3";
btn3.id = "btn3";
btn3.className = "btnClass";

btn4.innerHTML = "4";
btn4.id = "btn4";
btn4.className = "btnClass";

btn5.innerHTML = "5";
btn5.id = "btn5";
btn5.className = "btnClass";

btn6.innerHTML = "6";
btn6.id = "btn6";
btn6.className = "btnClass";

btn7.innerHTML = "7";
btn7.id = "btn7";
btn7.className = "btnClass";

btn8.innerHTML = "8";
btn8.id = "btn8";
btn8.className = "btnClass";

btn9.innerHTML = "9";
btn9.id = "btn9";
btn9.className = "btnClass";

document.body.appendChild(btns);
document.getElementById("btns").appendChild(btn1);
document.getElementById("btns").appendChild(btn2);
document.getElementById("btns").appendChild(btn3);
document.getElementById("btns").appendChild(btn4);
document.getElementById("btns").appendChild(btn5);
document.getElementById("btns").appendChild(btn6);
document.getElementById("btns").appendChild(btn7);
document.getElementById("btns").appendChild(btn8);
document.getElementById("btns").appendChild(btn9);

btn5.onclick = function() {
    [btn1.innerHTML, 
    btn4.innerHTML, 
    btn7.innerHTML, 
    btn8.innerHTML, 
    btn9.innerHTML, 
    btn6.innerHTML, 
    btn3.innerHTML, 
    btn2.innerHTML] = 
                      [btn4.innerHTML, 
                      btn7.innerHTML, 
                      btn8.innerHTML, 
                      btn9.innerHTML, 
                      btn6.innerHTML, 
                      btn3.innerHTML, 
                      btn2.innerHTML, 
                      btn1.innerHTML];
                        
}
```
```css
#btns{
    width: 75%;
} 
.btnClass {
    width: 30%;
    height: 48px;
    font-size: 24px;
}
```
```html
<!-- Enter your HTML code here -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Buttons Grid</title>
        <link rel="stylesheet" href="css/buttonsGrid.css" type="text/css">
    </head>
    <body>
        <script src="js/buttonsGrid.js" type="text/javascript"></script>
    </body>
</html>
```
## 025 Create a Button
```js
var btn = document.createElement("Button");

btn.innerHTML = "0";
btn.id = "btn";
btn.className = "btnClass";

document.body.appendChild(btn);

btn.onclick = function() {
    btn.innerHTML++;
}
```
```css
.btnClass {
    width: 96px;
    height: 48px;
    font-size: 24px;
}
```
```html
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/button.css" type="text/css">
    </head>
    
    <body>
        <script src="js/button.js" type="text/javascript"></script>
    </body>
</html>
```