                                  # IT24102699
                                
                              # Mummullage B.U.T
                                
                  # IT2120 - Probability and Statistics - Lab 06


getwd()
setwd("F:\\SLIIT\\_Year_02_\\Semester 01\\PS - Probability and Statistics\\Lab Practicals\\Lab 06\\IT24102699")
getwd()


## Question 01


# i. What is the distribution of X?

          # X has a binomial distribution with n = 50 with p = 0.85



# ii. What is the probability that at least 47 students passed the test?

          # Method 01
          pbinom(46, size = 50, prob = 0.85, lower.tail = FALSE)
          
          # Method 02
          1 - pbinom(46, size = 50, prob = 0.85)
          




##Question 02


# i. What is the random variable (X) for the problem?
          
          # The number of customer calls received in an hour.

          
# ii. What is the distribution of X?
          
          # Poisson distribution.
          

# iii. What is the probability that exactly 15 calls are received in an hour?
          
          dpois(15, lambda = 12)
          
          