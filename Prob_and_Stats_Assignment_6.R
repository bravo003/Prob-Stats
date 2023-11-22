library("pracma")
#Q1
#(a)
f = function(x,y) {
  2*(2*x + 3*y)/5
}

I = integral2(f,xmin =0, xmax=1,ymin=0,ymax=1)
I$Q

#(b)
g = function(y) {
  f(1,y)
}
integral(g,0,1)

#(c)
h = function(x)
{
  f(x,0)
}
integral(h,0,1)

#(d)
e = function(x,y)
{
  x*y * f(x,y)
}

I= integral2(e,xmin =0, xmax=1,ymin=0,ymax=1)
I$Q


#Q2
f = function(x,y)
{
  (x+y)/30
}
#(a)
x = c(0:3)
y = c(0:2)

M1 = matrix(c(f(0,0:2), f(1,0:2), f(2,0:2), f(3,0:2)), nrow = 4, ncol = 3, byrow = TRUE)
M1

#(b)
sum(M1)
#since sum is 1 therefore it is a JOINT PDF

#(c)
apply(M1,1,sum)

#(d)
hy<-apply(M1,2,sum)
hy

#(e)
M1[1,2]/hy[2]

#(f)
#E(X)
ex<-sum(x*M1)

#E(Y)
ey<-sum(y*M1)

#E(XY)
exy<-sum(outer(x, y, "*") *M1)

#Var(X)
ex2<- sum(x*x*M1)

varx<-ex2 - (ex)^2

#Var(Y)
ey2<-sum(y*y*M1)

vary<-ey2 - (ey)^2

#Cov(X,Y)
cxy <- exy - ex*ey

#Correlation coefficient
cxy/ (sqrt(varx)*sqrt(vary))

cxy/ (sqrt(varx*vary))


