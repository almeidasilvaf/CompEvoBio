

# The {Biostrings} package and `XStringSet` objects ====
library(Biostrings)












## Exercises ====

#' Use the `dna_seqs` object created above to answer the following questions:
#' 
#' 
#' 1. What is the length of the 3rd sequence?
#' 
#' 2. What is the name of the 5th sequence?
#' 
#' 3. How many times does the TTCC sequence string occur in each 
#' sequence? Hint: use the function vcountPattern().
#' 
#' 4. What are the first 3 nucleotides of each sequence? Hint: use the 
#' subseq() function.
#' 




# The {Biostrings} package and `XMultipleAlignment` objects ====
aln_path <- system.file("extdata", "msx2_mRNA.aln", package = "Biostrings")






## Exercises =====

#' What is the consensus sequence of the multiple sequence alignment 
#' in `dna_msa`? Hint: use the consensusString() function.








# The {ape} package and `phylo` objects ====
library(ape)
text_tree <- "((((cow, pig),whale), (bat, (lemur, human))), iguana);"







## Exercises ====

#' Use the following code to simulate a random tree and answer the questions below:
    
set.seed(123) # for reproducibility
sim_tree <- rtree(n = 20)

#' 1. How many terminal taxa (i.e., tips) are there?
#' 2. What are the names of terminal taxa?
#' 3. What taxon is more closely-related to the taxon “t1”?
    







