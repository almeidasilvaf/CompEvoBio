
library(doubletrouble)
library(syntenet)

# Identifying duplicated genes ====
data(yeast_seq)
data(yeast_annot)
data(diamond_intra)
data(diamond_inter)









## Exercises ====

#' Explore the example data sets to answer the following questions:
#'     
#' 1. Is the number of sequences in yeast_seq the same as the number of 
#' gene ranges in yeast_annot for S. cerevisiae?
#' 2. How many genes are there in S. cerevisiae’s chromosome 1?
#' 




# Classifying duplicate pairs ====










## Exercises ====

#' How many gene pairs are there per mode? 
#' Hint: you can use the table() function.







# Assigning genes into unique modes of duplication ====









## Exercises ====

#' Use the data frame with classified genes to answer the questions below.
#'
#' 1. How many duplicated genes are there for each mode?
#' 2. What is the duplication mode of the gene “YOR326W”?
#' 3. What is the proportion (in %) of duplicated genes in the 
#' S. cerevisiae genome?
#' 







# Calculating substitution rates ====

data(cds_scerevisiae)







data(gmax_ks)








## Exercises ====

#' Use the output of `find_ks_peaks()` with the soybean data set to 
#' answer the following questions:
#' 
#' 1. What are the mean and standard deviation for the peaks?
#' 2. How many gene pairs have Ks values between 0 and 0.4? 
#' What does that mean about the age of such gene pairs?
#' 





