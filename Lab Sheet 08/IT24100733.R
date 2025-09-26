getwd()
setwd("C:\\Users\\it24100733\\Documents\\New folder")

data<-
# Q1
# Laptop bag weights
Weight <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)

# Population mean and standard deviation
pop_mean <- mean(Weight)
pop_sd <- sd(Weight)

pop_mean
pop_sd

#Q2
set.seed(123)  # For reproducibility

# Create a matrix with 6 rows (sample size), 25 columns (samples)
samples <- matrix(nrow = 6, ncol = 25)

# Fill matrix with random samples
for (i in 1:25) {
  samples[, i] <- sample(Weight, 6, replace = TRUE)
}

# Sample means and standard deviations
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

# Create a table of results
sample_stats <- data.frame(
  Sample = 1:25,
  Mean = round(sample_means, 4),
  SD = round(sample_sds, 4)
)

print(sample_stats)

#Q3

# From previous steps
sample_mean_of_means <- mean(sample_means)
sample_sd_of_means <- sd(sample_means)

# Population SD from Q1 was:
# pop_sd = 0.2169 (already calculated)

# Sample size
n <- 6

# Theoretical SD of sample means
theoretical_sd_of_means <- pop_sd / sqrt(n)

# Print all
sample_mean_of_means
sample_sd_of_means
theoretical_sd_of_means