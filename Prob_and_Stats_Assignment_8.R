#Q1
#(a)
df=read.csv("C:/Users/NItya/Downloads/Clt-data.csv")

#(b)
head(df,10)
row = nrow(df)
row

#(c)
mean_value <- mean(df$Wall.Thickness) 
hist(df$Wall.Thickness, main = "Histogram", xlab = "Values")

#(d)
abline(v = mean_value, col = "red", lwd = 2)

#Q2
num_samples <- 1000

sample_means <- numeric(num_samples)

for (i in 1:num_samples) {
  sample <- sample(df$Wall.Thickness, size = 10, replace = TRUE)  
  sample_means[i] <- mean(sample)
}

hist(sample_means, main = "Histogram of Sample Means", xlab = "Sample Means")


