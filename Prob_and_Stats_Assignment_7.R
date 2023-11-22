#Q1
n=100
df = n-1
y = rt(n,df)
hist(y)

#Q2
n=100
df = c(2,10,25)
rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])

#Q3
x = seq(-6,6,length = 100)
x
df = c(1,4,10,30)

dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
dt(x,df[4])

colour = c("black","orange","blue","red")

plot(x,dt(x,df[4]),type = "l",main = "NB",col = colour[4])

for(i in 1:3){
  lines(x,dt(x,df[i]),type = "l",col = colour[i])
}

#Q4
#(a)
qf(0.95,df1 = 10,df2=20)

#(b)
x = 1.5
v1 = 10
v2 = 20

s1 = pf(x, df1 = v1, df2 = v2)
s1

s2 = pf(x, df1 = v1, df2 = v2, lower.tail = FALSE)
s2

area = s1 + s2
area

#(c)
q = c(0.25,0.5,0.75,0.999)
v1 = 10
v2 = 20

qf(q[1],df1 = v1, df2 = v2)
qf(q[2],df1 = v1, df2 = v2)
qf(q[3],df1 = v1, df2 = v2)
qf(q[4],df1 = v1, df2 = v2)

#(d)
v1 <- 10
v2 <- 20

random_values <- rf(1000, v1, v2)

hist(random_values, breaks = 30, col = "pink", main = "Histogram of F-distribution",
     xlab = "Random Values", ylab = "Frequency")

