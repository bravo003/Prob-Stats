#Q1(a)
x <- c(rep("gold",20),rep("silver",30),rep("bronze",50))
sample(x,10)

#Q1(b)
sample(c("succ","fail"),10,replace = T, prob=c(0.9,0.1))

#Q2
M=50
prob1 = 1-(factorial(365))/(((365)^M)*factorial(365-M))
print(prob1)

M <- 50
prob1 <- 1 - (gamma(365) / ((365^M) * gamma(365 - M)))
print(prob1)

M <- 50
prob1 <- 1 - prod(365:(365 - M + 1)) / (365^M)
print(prob1)


#Q3
c=0.4
r=0.2
cr=0.85

cloudy <- function (c,r,cr) {(cr*r)/c}
cloudy(c,r,cr)

#Q4
data<-iris
head(data,4)
str(data)
range(iris$Sepal.Length)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
quantile(iris$Sepal.Length, probs =c(0.25,0.75))
lapply(data[,1:4],sd)
lapply(data[,1:4],var)


#Q5
mode<-function(a){
  uni <- unique(a)
  count <-table(a)
  
  max_count <- max(count)
  
  mode <- uni[max_count==count]
  print(paste("Frequency is",max_count))
  
  return (mode)
}

d<- c(1,1,1,2,3,3)
mode(d)