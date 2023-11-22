#Q1
x<-c(5,10,15,20,25,30)
min(x)
max(x)

#Q2
num = as.integer(readline(prompt="Enter a number: "))
factorial = 1

if(num < 0) {
  print("Error, factorial does not exist for negative numbers")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i in 1:num) {
    factorial = factorial * i
  }
  print(paste("The factorial of", num ,"is",factorial))
}

#Q3
nterms = as.integer(readline(prompt = "How many terms? "))
n1 = 0
n2 = 1
c = 2
if(nterms<=0)
{
  print("Error")
} else {
  if(nterms==1){
  print("Sequence:")
  print(n1)
}else{
  print("Sequence:")
  print(n1)
  print(n2)
  while(c<nterms){
    n= n1+n2
  print(n)
  n1=n2
  n2=n
  c=c+1}}}

#Q4
a = as.integer(readline(prompt = "Enter first number: "))
b = as.integer(readline(prompt = "Enter second number: "))

c = as.integer(readline(prompt = "Enter:"))

if(c==1){
  print(paste("Addition:",a+b))
}else if(c==2){
  print(paste("Subtraction:",a-b))
}else if(c==3){
  print(paste("Multiplication:",a*b))
}else{
  print(paste("Division:",a/b))
}

add<-function(x,y) {x+y}
add(2,3)
subtract=function(x,y) {x-y}
subtract(2,3)
multiply=function(x,y) {x*y}
multiply(2,3)
divide=function(x,y) {x/y}
divide(2,3)



#Q5
x<-c(1,5,7)
y<-c(2,6,8)

plot(x,y)
plot(1:5, type='l')
plot(1:5, main="graph", xlab="x-axis",ylab="y-axis",col="blue" )