
# Multiple Sequence Alignment (MSA) ====
library(msa)
library(Biostrings)
fasta_path <- system.file("examples", "HemoglobinAA.fasta", package="msa")

fasta_path

aa <- readAAStringSet(fasta_path)
aa

aa_msa <- msa(aa)
aa_msa


# Calculating distance matrices =====
library(MSA2dist)
library(seqinr)

msa1 <- as(aa_msa, "AAStringSet")
msa1

msa2 <- msaConvert(aa_msa, type = "seqinr::alignment")
msa2


dist1 <- aastring2dist(msa1, score = granthamMatrix())
dist1 <- as.dist(dist1$distSTRING)
dist1

dist2 <- dist.alignment(msa2, matrix = "similarity")
dist2

# Inferring trees ====
library(ape)

## infer a tree with neighbor-joining
tree1 <- bionjs(dist1)
tree2 <- bionjs(dist2)

tree1

par(mfrow = c(1,2))
plot(tree1)
plot(tree2)

library(phangorn)

?treedist
treedist(tree1, tree2)



## Exercises ====

#' Use the `dist_matrix1` object to infer a phylogeny using the upgma() 
#' function from the phangorn package. Is the topology the same as the 
#' topology of `tree1`?

tree1_1 <- upgma(dist1)
treedist(tree1, tree1_1)










