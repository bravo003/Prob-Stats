#Q1
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)

sum(x*px)
weighted.mean(x,px)
c(x%*%px)

#Q2
f <- function(t) {t*0.1*exp(-0.1*t)}
y <- integrate(f,lower =0, upper = Inf)
print(y$value)

#Q3
x<- c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)

y = 10*x - 12
sum(y*px)

#net_profit
d=12*x + 2(3-x) - 18
d=10*x - 12
d

#Q4
f <- function(t) {t*0.5*exp(-abs(t))}
y <- integrate(f, lower =1, upper = 10)
d<-print(y$value)

g <- function(t) {t**2*0.5*exp(-abs(t))}
x <- integrate(g, lower =1, upper = 10)
e<-print(x$value)

e - d**2

#Q5
f <- function(t) {(3/4)*(1/4)**(sqrt(t)-1)}
x=3
t = x**2
p = f(t)
print(p)

x = c(1,2,3,4,5)
t = x**2
exp1=sum(t*f(t))
exp1
exp2=sum(t*t*f(t))
exp2
var = exp2 - exp1^2
var

#MAAM CODE
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<-3
y = x^2
p <- f(y)
print(p)
#expected value and variance of Y for X = 1,2,3,4,5
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<- c(1,2,3,4,5)
y<-x^2
Exp1 <- sum(y*f(y))
print(Exp1)
#
Exp2<-sum(y*y*f(y))
Var<-Exp2-(Exp1)^2
print(Var)
