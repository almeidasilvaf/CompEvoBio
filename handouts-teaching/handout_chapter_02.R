

# The {Biostrings} package and `XStringSet` objects ====
library(Biostrings)
#BiocManager::install("Biostrings")

# DNAString
dna <- DNAString("ATGGGCGTCAGTCGA")
dna

# RNAString
rna <- RNAString(dna)
rna

# AAString
aa <- translate(rna)
aa

fasta_path <- system.file("extdata", "someORF.fa", package = "Biostrings")
fasta_path

# readDNAStringSet vs readRNAStringSet vs readAAStringSet
dna_seqs <- readDNAStringSet(fasta_path)
dna_seqs

width(dna_seqs)
names(dna_seqs)

dna_seqs[3]
dna_seqs[[3]]

class(dna_seqs)
class(dna_seqs[[1]])




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

# Q1
length(dna_seqs[[3]])
width(dna_seqs)[3]

# Q2
names(dna_seqs)[5]

# Q3
vcountPattern("TTCC", dna_seqs)


# The {Biostrings} package and `XMultipleAlignment` objects ====
aln_path <- system.file("extdata", "msx2_mRNA.aln", package = "Biostrings")

msa <- readDNAMultipleAlignment(aln_path)
msa




## Exercises =====

#' What is the consensus sequence of the multiple sequence alignment 
#' in `dna_msa`? Hint: use the consensusString() function.

consensusString(msa)







# The {ape} package and `phylo` objects ====
library(ape)
# Newick file format
text_tree <- "((((cow, pig),whale), (bat, (lemur, human))), iguana);"

tree <- read.tree(text = text_tree)
tree

class(tree)

names(tree)
tree$edge
tree$Nnode
tree$tip.label

plot(tree)

## Exercises ====

#' Use the following code to simulate a random tree and answer the questions below:
    
set.seed(123) # for reproducibility
sim_tree <- rtree(n = 20)

#' 1. How many terminal taxa (i.e., tips) are there?
#' 2. What are the names of terminal taxa?
#' 3. What taxon is more closely-related to the taxon “t1”?
    
# Q1
length(sim_tree$tip.label)

sim_tree$Nnode

# Q2
sim_tree$tip.label

# Q3
plot(sim_tree)




