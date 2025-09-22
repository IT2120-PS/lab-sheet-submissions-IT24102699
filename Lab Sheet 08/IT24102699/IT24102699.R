
                                        # IT24102699

                                    # Mummullage B.U.T

                    # IT2120 - Probability and Statistics - Lab 08


getwd()
setwd("F:\\SLIIT\\_Year_02_\\Semester 01\\PS - Probability and Statistics\\Lab Practicals\\Lab 08\\IT24102699")
getwd()



# Question 01

laptops <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

attach(laptops)

pop_mean <- mean(Weight.kg.)
print(paste("Population Mean:", pop_mean))

n <- length(Weight.kg.)
pop_var <- var(Weight.kg.) * (n - 1) / n
pop_sd <- sqrt(pop_var)

print(paste("Population Standard Deviation:", pop_sd))



# Question 02

sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., size = 6, replace = TRUE)
  sample_means <- c(sample_means, mean(s))
  sample_sds <- c(sample_sds, sd(s))
}

results_table <- data.frame(
  Sample_Number = 1:25,
  Mean = sample_means,
  Standard_Deviation = sample_sds
)

print("25 Sample Means and Standard Deviations")
print(results_table)



# Question 03

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Population Mean:", pop_mean))
print("The mean of the sample means is approximately equal to the population mean.")

print(paste("SD of Sample Means:", sd_of_sample_means))
print(paste("Population SD / sqrt(n):", pop_sd / sqrt(6)))

print("The standard deviation of the sample means is approximately equal to the population standard deviation divided by the square root of the sample size.")

