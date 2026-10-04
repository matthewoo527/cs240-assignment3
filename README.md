# cs240-assignment3
Matthew Woo-Assignment 3
CS 240
## 1.	Install or open MARS and run a Hello World program.
 <img width="377" height="135" alt="image" src="https://github.com/user-attachments/assets/5bfac275-d8e0-43fd-aa2e-ee66e729fac2" />

### Output: 
<img width="468" height="95" alt="image" src="https://github.com/user-attachments/assets/2fdf570c-04d5-47f9-bbe6-abffb1937218" />
<img width="146" height="242" alt="image" src="https://github.com/user-attachments/assets/92d6e85a-3a9e-4ce4-bbe2-ff0e463a747e" />

### Reflection:
We can see that register $v0 set to 4, and $a0 stores address of null-terminated string to print. We set $a0 to the address represented by the label called helloworld (.asciiz “Hello world” will give us an address that stores ascii value).
## 2.	Write a loop that prints the integers 1 through 100.
<img width="89" height="248" alt="image" src="https://github.com/user-attachments/assets/44d36416-64da-44a5-a4da-315334160dc1" />

### Output:
```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100

-- program is finished running (dropped off bottom) --
```
<img width="237" height="140" alt="image" src="https://github.com/user-attachments/assets/e3389bc5-63fb-4534-8189-5447fc29c15b" />

### Reflection:
This program number 1 to 100. First, set $t0 to 1 and $t1 to 101, then PrintInt (the number in $t0) and PrintNewLine. Add 1 to $t0 and repeat print for each loop until $t0 == $t1 (when 1 = 101).
## 3.	Write a program that calculates the sum of the even integers from 1 through 100.
<img width="110" height="86" alt="image" src="https://github.com/user-attachments/assets/70e3f752-ea5f-4ddc-bb78-59e66b08046e" />

### Output:
<img width="211" height="137" alt="image" src="https://github.com/user-attachments/assets/4ce0eb75-a344-45df-8298-c85a94c4491e" />

### Reflection:
The output is at the register $t2. Set register $t0 to 0 and $t1 to 102. Start from 0, add 2 in each run, $t2 = $t2 + $t0. Then $t0 = $t0 + 2. If $t0 != $t1, then keep looping. Register $t2 is the output/result.
## 4.	Write a program that loads two integers from Memory and puts them into registers, adds the values together, and stores back to memory.
<img width="345" height="129" alt="image" src="https://github.com/user-attachments/assets/afc4efff-aaf9-4a15-8c9e-bae81c875078" />
<img width="345" height="181" alt="image" src="https://github.com/user-attachments/assets/1beed9b1-cada-4558-9e6f-3b147391cc48" />
<img width="138" height="243" alt="image" src="https://github.com/user-attachments/assets/ee89d126-5b04-459f-9e76-b58215934bad" />

### Output:
Output is the value in $t2, 11
### Reflection:
This program takes two integer and stores it into the memory. Then load the values from memory into register and sum that. Then store that value to memory.

## 5.	Write a program that prints FizzBuzz.
<img width="236" height="159" alt="image" src="https://github.com/user-attachments/assets/225fa7ae-0d54-49d9-9a06-d6a2510b7d7b" />
<img width="61" height="61" alt="image" src="https://github.com/user-attachments/assets/24d436fa-f673-4a64-b3b5-6dc93665e3f6" />
<img width="118" height="212" alt="image" src="https://github.com/user-attachments/assets/f2aba997-6b47-46ff-aaa3-4cc84c73b77e" />
<img width="163" height="102" alt="image" src="https://github.com/user-attachments/assets/59dd5223-dafe-4d6a-a5d1-5df8730d67ca" />

### Output:
```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
Fizz
22
23
Fizz
Buzz
26
Fizz
28
29
FizzBuzz
31
32
Fizz
34
Buzz
Fizz
37
38
Fizz
Buzz
41
Fizz
43
44
FizzBuzz
46
47
Fizz
49
Buzz
Fizz
52
53
Fizz
Buzz
56
Fizz
58
59
FizzBuzz
61
62
Fizz
64
Buzz
Fizz
67
68
Fizz
Buzz
71
Fizz
73
74
FizzBuzz
76
77
Fizz
79
Buzz
Fizz
82
83
Fizz
Buzz
86
Fizz
88
89
FizzBuzz
91
92
Fizz
94
Buzz
Fizz
97
98
Fizz
Buzz

-- program is finished running (dropped off bottom) --
```
### Reflection:
This program print Fizz when dividable by 3, print Buzz when dividable by 5, print FizzBuzz if dividable by both. First set $t0 to 1, $t1 to 101. Then jump PrintItem, check FizzBuzz and print Fizz or Buzz or FizzBuzz. After each runs increment by 1 and keep looping until $t0 == $t1 (when 1 increment to 101). We check the remainder to check if it can divided by 3 or 5. $t2 stores the remainder for %3 for each runs and $t3 stores the remainder for %5 for each runs.
