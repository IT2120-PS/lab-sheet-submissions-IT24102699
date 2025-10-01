
                                        # IT24102699

                                    # Mummullage B.U.T

                      # IT2120 - Probability and Statistics - Lab 08

setwd("F:\\SLIIT\\_Year_02_\\Semester 01\\PS - Probability and Statistics\\Lab Practicals\\Lab 09\\IT24102699")
getwd()


# Exercise

# Part i

baking_times <- rnorm(25, mean = 45, sd = 2)
print(baking_times)


# Part ii

t.test(baking_times, mu = 46, alternative = "less")
