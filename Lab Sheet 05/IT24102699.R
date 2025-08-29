
                    #  Lab Sheet 05 - Exercise


getwd()
setwd("F:\\SLIIT\\_Year_02_\\Semester 01\\PS - Probability and Statistics\\Lab Practicals\\Lab 05\\IT24102699")
getwd()


          # Question 01

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

attach(Delivery_Times)

fix(Delivery_Times)



          # Question 02

delivery_hist <- hist(Delivery_Time_.minutes.,
                      main = "Histogram of Delivery Times",
                      xlab = "Delivery Time (minutes)",
                      breaks = seq(20, 70, length = 10), 
                      right = FALSE) 




          # Question 03

# The histogram is unimodal, with most deliveries between 35 and 45 minutes. 
# The shape is fairly balanced but slightly skewed to the right, showing a few longer delivery times.



          # Question 04

breaks <- delivery_hist$breaks
freq <- delivery_hist$counts

cum.freq <- cumsum(freq)

new <- c(0)

new <- c(new, cum.freq)

plot(breaks, new,
     type = "b", # "b" for both points and lines
     main = "Cumulative Frequency Polygon for Delivery Times",
     xlab = "Delivery Times (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

