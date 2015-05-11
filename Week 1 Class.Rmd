> x<-1 ##expression in R
> x
[1] 1
> y<-
+ ##it is incomplete expression
+ 2
> y
[1] 2
> print(y) ## explicit printing
[1] 2
> y ##auto-printing
[1] 2
> z<-1:20##sequence operator
> z
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
> ##Elements of vector
> msg<-"Hello" ##String
> msg
[1] "Hello"
> print (x,msg)
Error in print.default(x, msg) : invalid 'digits' argument
In addition: Warning message:
In print.default(x, msg) : NAs introduced by coercion
> print (x,y)
[1] 1
> print (y,z)
[1] 2
> x
[1] 1
> y
[1] 2
> print(msg,x)
[1] "Hello"
> x<-c(1,"aa",1+4i)
> x  ##vector with different classes
[1] "1"    "aa"   "1+4i"
> x<-9:29
> x
 [1]  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
> x<-vector("numeric",length=10)
> x
 [1] 0 0 0 0 0 0 0 0 0 0
> x<-c(1+0i,2+4i)
> x
[1] 1+0i 2+4i
> x<-6:29
> x
 [1]  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
> as.integer(x)
 [1]  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
> as.complex(x)
 [1]  6+0i  7+0i  8+0i  9+0i 10+0i 11+0i 12+0i 13+0i 14+0i 15+0i 16+0i 17+0i 18+0i 19+0i 20+0i 21+0i 22+0i 23+0i
[19] 24+0i 25+0i 26+0i 27+0i 28+0i 29+0i
> as.factor(x)
 [1] 6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
Levels: 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
> as.logicl(x)
Error: could not find function "as.logicl"
> as.logical(x)
 [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[23] TRUE TRUE
> x<-list(1,"a",TRUE,1+4i)
> x
[[1]]
[1] 1

[[2]]
[1] "a"

[[3]]
[1] TRUE

[[4]]
[1] 1+4i

> x<-1:3
> y<-5:7
> cbind(x,y)
     x y
[1,] 1 5
[2,] 2 6
[3,] 3 7
> rbind(x,y)
  [,1] [,2] [,3]
x    1    2    3
y    5    6    7
> m>-matrix(nrow=2,ncol=3)
Error: object 'm' not found
> m<-matrix(nrow=2,ncol=3)
> m
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> dim(m)
[1] 2 3
> $dim
Error: unexpected '$' in "$"
> attributes(m)
$dim
[1] 2 3

> z<rbind(x,y)
Error: object 'z' not found
> z<-rbind(x,y)
> z
  [,1] [,2] [,3]
x    1    2    3
y    5    6    7
> dim(z)
[1] 2 3
> attributes(z)
$dim
[1] 2 3

$dimnames
$dimnames[[1]]
[1] "x" "y"

$dimnames[[2]]
NULL


> z<-matrix(nrow=u,ncol=v)
Error in matrix(nrow = u, ncol = v) : object 'u' not found
> getwd()
[1] "C:/Users/ktelk/Documents/Coursera"
> setwd("C:/Users/ktelk/Documents/Coursera")
> a<-factor(c("yes","yes","yes","no"))
> a
[1] yes yes yes no 
Levels: no yes
> table(a)
a
 no yes 
  1   3 
> unclass(a)
[1] 2 2 2 1
attr(,"levels")
[1] "no"  "yes"
> b<-factor(c("male","female","male","female","female"),levels=c("male","female"))
> b
[1] male   female male   female female
Levels: male female
> c<-data.frame(high=1:6, low=c(A,B,C,D,E,F))
Error in data.frame(high = 1:6, low = c(A, B, C, D, E, F)) : 
  object 'A' not found
> c<-data.frame(high=1:6,low=c("A","B","C","D","E","F"))
> c
  high low
1    1   A
2    2   B
3    3   C
4    4   D
5    5   E
6    6   F
> nrow(c)
[1] 6
> ncol(c)
[1] 2
> str(c)
'data.frame':	6 obs. of  2 variables:
 $ high: int  1 2 3 4 5 6
 $ low : Factor w/ 6 levels "A","B","C","D",..: 1 2 3 4 5 6
> d<-1:3
> d
[1] 1 2 3
> names(d)<-c("high","medium","low")
> d
  high medium    low 
     1      2      3 
> names(d)
[1] "high"   "medium" "low"   
> m
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> z
  [,1] [,2] [,3]
x    1    2    3
y    5    6    7
> z<-matrix(dimnames=list(c(x,y),c(a,b,c)))
Error in matrix(dimnames = list(c(x, y), c(a, b, c))) : 
  length of 'dimnames' [1] not equal to array extent
> dimnames(z)<-list(c(x,y),c(a,b,c))
Error in dimnames(z) <- list(c(x, y), c(a, b, c)) : 
  length of 'dimnames' [1] not equal to array extent
> m
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> z
  [,1] [,2] [,3]
x    1    2    3
y    5    6    7
> dimnames(z)<-list(c("x","y"),c("a","b","c"))
> m
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> z
  a b c
x 1 2 3
y 5 6 7
> k<-1:10
> k
 [1]  1  2  3  4  5  6  7  8  9 10
> dim(k)<-c(nrow=2,ncol=3)
Error in dim(k) <- c(nrow = 2, ncol = 3) : 
  dims [product 6] do not match the length of object [10]
> dim(k)<-c(nrow=2,ncol=5)
> k
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
> a
[1] yes yes yes no 
Levels: no yes
> x
[1] 1 2 3
> y
[1] 5 6 7
> d
  high medium    low 
     1      2      3 
> cbind(x,y)
     x y
[1,] 1 5
[2,] 2 6
[3,] 3 7
> rbind(x,y)
  [,1] [,2] [,3]
x    1    2    3
y    5    6    7
> k
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
> d
  high medium    low 
     1      2      3 
> n<-1:6
> n
[1] 1 2 3 4 5 6
> cbind(x,y)
     x y
[1,] 1 5
[2,] 2 6
[3,] 3 7
> cbind(x,n)
     x n
[1,] 1 1
[2,] 2 2
[3,] 3 3
[4,] 1 4
[5,] 2 5
[6,] 3 6
> rbind(x,n)
  [,1] [,2] [,3] [,4] [,5] [,6]
x    1    2    3    1    2    3
n    1    2    3    4    5    6
> 
install.packages("swirl")
# installing/loading the latest installr package:
install.packages("installr"); library(installr) #load / install+load installr
data2<-read.table("inputLargeData.txt",sep=,header=T,nrows=100)#If large data sets are present define nrows  argument to read first 100 or 1000 rows
classes<-sapply(data2,class) #Define classes by using sapply as function
tabALL<-read.table("inputLargeData.txt",sep=,header=T,colClasses=classes)#looped and table imported for all data
x<-1440000000/1024
x
y<-x/1024
y
z<-y/1024
z
1024*1024*1024
a<-1440000000/1073741824
a
x<-data.frame(a=1,b=2)
dput(x)
dput(x,file="x.R")
new.x<-dget("x.R")
new.x
x<-"foo"
y<-data.frame(a=1,b=2)
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")
y
x
x<-matrix(1:6,2,3)
x[1,2]
x[1,2,drop=FALSE]
x[1,2,drop=TRUE]
y<-c("a","b","c","c","d","a")# character vector
class(y)
# sub setting using numeric index
y[1]# first element we get character vector
y[2]# second element we get character vector
y[1:4]#sequence of element we get character vector
# sub setting using logical index
y[y>"a"]#letter greater than a; this is used as there is lexicographical orderto the letters
u<-y>"a" #creating logical vector using elements of y
u#returns elements explained as logical indices (TRUE/FALSE)
y[u]##returns elements letter greater than a;
y[c(1,3)]#returns first and third element
y[-c(1,3)]#returns all elements except first and third element
z <- list(foo = 1:4, bar = 0.6)
class(z)#"class list"
class(z$foo)#"class integer"
class(z$bar)#"class numeric"
z[1]# List with sequence of 1,2,3,4
z[[1]]# sequence of 1,2,3,4
z[2]# List with element 0.6
z[[2]]# element 0.6
z[1,2]#Error in z[1, 2] : incorrect number of dimensions
z[c(1,2)]#List with sequence of 1,2,3,4 and List with element 0.6
z[[1,2]]# Error in z[[1, 2]] : incorrect number of subscripts
v<-list(foo = 1:4, bar = 0.6, baz="hello")
name<-"foo"
v[name]# List with sequence of 1,2,3,4
v[[name]]# sequence of 1,2,3,4
v$name#NULL element name does not exist
v$foo # sequence of 1,2,3,4
m<-list(a=list(10,12,14),b=c(3.14,2.81))
class(m)
m[[c(1,3)]]# third element of first object is printed
m[[1]][[3]]# third element of first object is printed
m[[c(2,1)]]# first element of second object is printed
m[[c(2,3)]]#Error in m[[c(2, 3)]] : subscript out of bounds
n<-matrix(1:6,2,3)
n # 2 by 3 matix
n[1,2] # element positioned in 1st row,second column
n[1,]#all elements positioned in 1st row
n[,1]#all elements positioned in 1st column
n[1,2,drop=FALSE]# adding subsetting operator if we need matrix as output; drop=TRUE removes dimension, drop=FALSE adds dimension
n[1,,drop=FALSE]#one by three matrix
n[,1,drop=FALSE]#two by two matrix
x<-list(bbdard=1:6)
x$b # Short source, list all objects of x
x[["b"]]# this is null 
x[["b",exact=FALSE]]# Passing second argument exact as FALSE retrieves list all objects of x
k <- c(3, 5, 1, 10, 12, 6)
k[k<6]<-0
k
data<-read.csv("hw1_data.csv")
readLines(data,nrows=2)
?readLines
str(data)
head(data, nrows=2)
nrows(data)
summary(data)
tail(data, nrows=2)
data$Ozone [47]
bad<-is.na(data$Ozone)
bad
data$Ozone[!bad]
mean(data$Ozone)
?mean
mean(data$Ozone, trim = 0, na.rm = TRUE)
bad<-complete.cases(data$Ozone)
mean(data$Ozone[bad])
good<-complete.cases(data$Ozone,data$Solar.R )
mean(data$Solar.R[good & data$Ozone > 31 & data$Temp > 90])
mean(data$Temp[good & data$Month == 6])
mean(data$Temp [data$Month == 6])
max(data$Ozone [bad & data$Month == 5])