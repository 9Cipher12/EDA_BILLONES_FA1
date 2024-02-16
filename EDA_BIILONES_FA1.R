cytof_one_experiment <- read.csv("C:/Users/Cipher/Desktop/CRISTEL/cytof_one_experiment.csv")

X2_col <- cytof_one_experiment$X2B4

ecdf_values <- ecdf(X2_col)
plot(ecdf_values, 
     main = "Empirical Cumulative Distribution Function (ECDF)", 
     xlab = "Values", 
     ylab = "Cumulative Probability"
)

hist(X2_col, 
     breaks = "FD", 
     col = "red", 
     main = "Histogram of X2_col", 
     xlab = "Values", 
     ylab = "Frequency"
)

CD2 <- cytof_one_experiment$CD2
CD4 <- cytof_one_experiment$CD4

qqplot(CD2, rnorm(100),      
       main = "CD2 Q-Q Plot",      
       xlab = "Theoretical Quantiles",  
       ylab = "Sample Quantiles",       
       col = "blue",          
       pch = 19)   


qqplot(CD4, rnorm(100),      
       main = "CD4 Q-Q Plot",     
       xlab = "Theoretical Quantiles", 
       ylab = "Sample Quantiles",      
       col = "purple",         
       pch = 19)  

