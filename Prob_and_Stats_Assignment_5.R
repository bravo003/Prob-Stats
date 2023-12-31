#Q1
1-punif(45,0,60)
punif(45,0,60,lower.tail = FALSE)
punif(30,0,60) - punif(20,0,60)

#Q2
#(a)
dexp(3,0.5)

#(b)
x<- seq(0,5,0.04)
y<- dexp(x,0.5)
plot(x,y, xlab = "X", ylab = "Y")

#(c)
pexp(3,0.5)

#(d)
x<- seq(0,5,0.04)
y<- pexp(x,0.5)
plot(x,y, xlab = "X", ylab = "Y")

#(e)
n = 1000
sim = rexp(n,0.5)
plot(sim,xlab = "X", ylab = "Y")
plot(density(sim),xlab = "X", ylab = "Y")


#Q3
#do it like this only
#(a)
alpha = 2
beta = 1/3
pgamma(1,shape = alpha, scale= beta, lower.tail= FALSE)

#(b)
qgamma(0.70, shape = alpha, scale= beta)
