# syntax
> if (condition){
  +     statement  
  +     } 
> else{
  +     alternative
  +     }
#Example 1
x<-50
if (x>3) {
  y<-10
} else {
  y<-0 
} 
y
[1] 10
#Example 2
a<-1:100
if (b<-a/2) {
  b
}
[1]  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5
[20] 10.0 10.5 11.0 11.5 12.0 12.5 13.0 13.5 14.0 14.5 15.0 15.5 16.0 16.5 17.0 17.5 18.0 18.5 19.0
[39] 19.5 20.0 20.5 21.0 21.5 22.0 22.5 23.0 23.5 24.0 24.5 25.0 25.5 26.0 26.5 27.0 27.5 28.0 28.5
[58] 29.0 29.5 30.0 30.5 31.0 31.5 32.0 32.5 33.0 33.5 34.0 34.5 35.0 35.5 36.0 36.5 37.0 37.5 38.0
[77] 38.5 39.0 39.5 40.0 40.5 41.0 41.5 42.0 42.5 43.0 43.5 44.0 44.5 45.0 45.5 46.0 46.5 47.0 47.5
[96] 48.0 48.5 49.0 49.5 50.0
#Warning message:
  #In if (b <- a/2) { :
                       #the condition has length > 1 and only the first element will be used
#Example 3
c<-0.5
if (d<-c/2) {
  d>1
} else {
  d<1
}
[1] FALSE
#Example 4
c<-50
if (d<-c/2) {
  d>1
} else {
  d<1
}
[1] TRUE
#The unidimensional condition may be one of TRUE or FALSE, T or F, 1 or 0 or a statement 
#using the truth operators:
#x == y "x is equal to y"
#x != y "x is not equal to y"
#x > y "x is greater than y"
#x < y "x is less than y"
#x <= y "x is less than or equal to y"
#x >= y "x is greater than or equal to y"
#And may combine these using the & or && operators for AND. | or || are the operators for OR.
#Example 5
e<-4
if (e==3) {
  print("This is True")
} else {
  print ("This is False")
}
#Example 6
# To know even or odd
f<-20
if (f%%2==0) {
  print("This is even")
} else {
  print ("This is odd")
}
[1] "This is even"
#Example 7
# To know even or odd
g<-17
if (g%%2!=0) {
  print("This is odd")
} else {
  print ("This is even")
}
[1] "This is odd"
#Example 7
#Adding both conditions and printing value 
h<-6
if (h%%2==0) {
  print("This even")
} else if(h%%2!=0) {
  print("This is odd")
}else {
  print(h)
}
[1] "This even"
#Control Structures For Loop
j<-c("a","b","c","d")
for (i in 1:4) {
  print (j[i])
}
[1] "a"
[1] "b"
[1] "c"
[1] "d"
for (i in seq_along(j)) { #vector as a input and creates integer sequence based on length
  print (j[i])
}
[1] "a"
[1] "b"
[1] "c"
[1] "d"
for (letter in j) { # index variable used is letter
  print(letter)
}
[1] "a"
[1] "b"
[1] "c"
[1] "d"
for (i in 1:4) print (j[i]) # if the loop has single expression, no need to use curly braces
[1] "a"
[1] "b"
[1] "c"
[1] "d"
#Nested for loop: for loop inside of a for loop
k<-matrix(1:6,2,3)
k
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
#matrix has two dimensions so, loop over the rows and then over columns
#outer loop the ought with the i index is seek, is looping over the rose.
#"seek_lense' function used: it takes an integer to be number of rows in matrix and 
#creates integer sequence out of that
# First rows will be printed then next row
for (i in seq_len(nrow(k))) {
  for (j in seq_len(ncol(k))) {
    print (k[i,j])
  }
}
[1] 1
[1] 3
[1] 5
[1] 2
[1] 4
[1] 6
# First column printed followed by second and third
for (j in seq_len(ncol(k))) {
  for (i in seq_len(nrow(k))) {
    print (k[i,j])
  }
}
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
# going beyond 2-3 levels is often very difficult to read/understand
#for(var in seq) expr
#Example 1
for (m in 1:5) {
  print(m)
}
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
#'while' takes a logical expression and execute the loop based on logical expression
#while loops begin by testing a condition, if it is 'true', it executes the loop body: 
#after that, the condition is tested again.
#'Warning': if while loops are not written properly, it will result in infinite loops…..
count<-0
while (count<10) {
  print(count)
  count<-count+1
}
[1] 0
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
l<-1:10
while (l==1 && l<10) {
  print (l)
  l<-l+1
}
[1]  1  2  3  4  5  6  7  8  9 10
while (l<10) {
  print(l)
  l<-10
}
p<-5
while (p>=3 && p=<10) {
  print(p)
  coin<-rbinom(1,1,0.5)
  if (coin==1) {
      p<-p+1        
  } else {
    p<-p-1
  }
[1] 5
