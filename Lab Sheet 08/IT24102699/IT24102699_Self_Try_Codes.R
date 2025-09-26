
                                      # IT24102699

                                  # Mummullage B.U.T

                    # IT2120 - Probability and Statistics - Lab 08



getwd()
setwd("F:\\SLIIT\\_Year_02_\\Semester 01\\PS - Probability and Statistics\\Lab Practicals\\Lab 08\\IT24102699")
getwd()



## Question 01 --- Calculate population mean and variance of the data set.

# Importing the data set
data <- read.table("Data - Lab 8.txt", header=TRUE)
attach(data)

# Calculate population mean and variance
popmn <- mean(Nicotine)
popvar <- var(Nicotine)

# Display the results
print(paste("Population Mean:", popmn))
print(paste("Population Variance:", popvar))





## Question 02 --- Get 30 random samples of size 5, with replacement 
                 # and calculate sample mean and sample variance for each sample

# Create empty vectors to store the samples and their means/variances
samples <- c()
s.means <- c()
s.vars <- c()

# Loop 30 times to get 30 samples
for (i in 1:30) {
  # Draw a random sample of size 5 with replacement
  s <- sample(Nicotine, 5, replace = TRUE)
  
  # Store the created sample in the 'samples' matrix
  samples <- cbind(samples, s)
}

# Calculate the mean for each sample (column)
s.means <- apply(samples, 2, mean)

# Calculate the variance for each sample (column)
s.vars <- apply(samples, 2, var)


# Display the means and variances for all 30 samples
results_table <- data.frame(
  Sample_Number = 1:30,
  Sample_Mean = s.means,
  Sample_Variance = s.vars
)
print(results_table)





## Question 03 --- Calculate mean and variance of the Sample Means.

# Calculate the mean of the 30 sample means
samplemean <- mean(s.means)

# Calculate the variance of the 30 sample means
samplevars <- var(s.means)


# Display the results
print(paste("Mean of the Sample Means:", samplemean))
print(paste("Variance of the Sample Means:", samplevars))





## Question 04 --- Compare and state relationship (if any) Population Mean and the Mean of Sample Means.

# Display the two values for comparison
popmn
samplemean





## Question 05 --- Compare and state relationship (if any) Population Variance and the Variance of Sample Means.

# Calculate the true expected variance of the sample means
truevar <- popvar / 5

# Display the two values for comparison
truevar
samplevars








