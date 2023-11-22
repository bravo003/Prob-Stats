#Q1
pbinom(9,12,1/6) - pbinom(6,12,1/6)   #continous less than walle sarre aa jaatte
dbinom(7,12,1/6) + dbinom(8,12,1/6) + dbinom(9,12,1/6)    #kalli kalli yeh kalle point par nikalata

#Q2
pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)*100

#Q3
#lamda = 5
#a=0
ppois(0,5) #try to use ppois
dpois(0,5) #use differently

#lamda=50
#P(48<=X<=50) = P(X<=50) - P(X<=47)
ppois(50,50)-ppois(47,50)
dpois(48,50) + dpois(49,50) + dpois(50,50)

#Q4
dhyper(3, n=17, m=233, k = 5)

#Q5
#(a)
x = seq(0,31)

#(b)
pmf = dbinom(x,31,0.447)
plot(x,pmf)

#(c)
cdf = pbinom(x,31,0.447)
plot(x,cdf)

#(d)
mean(x)
var(x)
sd(x)