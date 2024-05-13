
library(here)
library(ape)

# Inferring a maximum likelihood tree ====

## To run on the terminal: iqtree2 -s data/turtle.fa -B 1000 -T 2









## Exercises ====

#' 1. Look at the report file in `data/turtle.fa.iqtree` and answer the 
#' questions below. Hint: you can use the `readLines()` function to read the 
#' output to the R session.
#'
#' - What is the best-fit model name?
#' - What are the AIC/AICc/BIC scores of this model and tree?




#' 2. Visualise the tree in data/turtle.fa.treefile. What relationship among 
#' three trees does this tree support? What is the ultrafast bootstrap 
#' support (%) for the relevant clade?
#' 




#' 3. In the figure below, you can see the tree published by 
#' Chiari et al. (2012). Does the inferred tree agree with the published tree?
 




# Applying partition models ====

## To run on the terminal: iqtree2 -s data/turtle.fa -p data/turtle.nex -B 1000 -T 2


## Exercises ====

#' 1. Look at the report file in `data/turtle.nex.iqtree`. 
#' What are the AIC/AICc/BIC scores of the partition model? 
#' Is it better than the previous model?


#' 2. Visualize the tree in `data/turtle.nex.treefile`. 
#' What relationship among three trees does this tree support? 
#' What is the ultrafast bootstrap support (%) for the relevant clade?
#'



#' 3. Does the inferred tree agree with the published tree (Chiari et al. 2012)?
    


# Selecting the best partitioning scheme

## To run on the terminal: iqtree2 -s data/turtle.fa -p data/turtle.nex -B 1000 -T 2 -m MFP+MERGE -rcluster 10 --prefix data/turtle.merge




## Exercises ====

#' Look at the report file `data/turtle.merge.iqtree` and answer the questions:
#' 
#' - How many partitions do we have now?
#' - Look at the AIC/AICc/BIC scores. Compared with two previous models, 
#' is this model better or worse?






#' Visualize the tree in `data/turtle.merge.treefile`. What relationship 
#' among three trees does this tree support? What is the ultrafast 
#' bootstrap support (%) for the relevant clade?




#' Does this tree agree with the published tree (Chiari et al. 2012)?






# Tree topology tests ====


## To run on the terminal: iqtree2 -s data/turtle.fa -p data/turtle.merge.best_scheme.nex -z data/turtle.trees -zb 10000 -au -n 0 --prefix data/turtle.test




## Exercises ====

#' Look at the “USER TREES” section in the report 
#' file `data/turtle.test.iqtree` and answer the questions:
#'
#' - Which tree has the worst log-likelihood?
#' - Can you reject this tree according to the Shimodaira Hasegawa test, 
#' assuming a p-value cutoff of 0.05?
#' - Can you reject this tree according to the Approximately Unbiased test, 
#' assuming a p-value cutoff of 0.05?



