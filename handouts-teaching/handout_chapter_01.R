

# Creating objects ====
1 + 1
2 * 3

number <- 1+1
number

(number <- 2 + 2)

name <- "Judith"
name

genome_size <- 30000
genome_size / 1000

# Functions and arguments ====

?round
round(3.1415)
round(3.1415, digits = 2)

args("round")

args("sqrt")
sqrt(4)




## Exercises ====

#' The genome of the plant Arabidopsis thaliana contains 33768 genes, 
#' of which 27655 are protein-coding and 6113 encode non-coding RNAs. 
#' Calculate the percentage of coding and non-coding genes in this genome 
#' using the following steps:
#' 
#' 
#' - Create a variable named `ath_genes` that stores the numeric value 33768.
#' 
#' - Create 2 objects named `n_coding` and `n_noncoding` that store 
#' the numeric values 27655 and 6113, respectively.
#' 
#' - Create 2 objects named `perc_coding` and `perc_noncoding` by dividing 
#' `n_coding` and `n_noncoding` by `ath_genes`.
#' 
#' - Update the objects by multiplying their contents by 100 (to represent 
#' in percentages, from 0 to 100) and rounding the percentages to 1 
#' significant digit only.
#' 

ath_genes <- 33768
ath_genes

n_coding <- 27655
n_noncoding <- 6113

perc_coding <- n_coding / ath_genes
perc_noncoding <- n_noncoding / ath_genes

perc_coding
perc_noncoding

perc_coding <- perc_coding * 100
perc_noncoding <- perc_noncoding * 100

perc_coding

round(perc_coding, 1)

perc_coding |> round(digits = 1)

round(perc_noncoding, 1)

# Vectors ====

# character vectors
species <- c("Arabidopsis", "soybean", "maize")
species

# numeric vectors
genome_size <- c(30000, 52000, 40000)
genome_size

# logical vectors
is_model <- c(TRUE, FALSE, FALSE)
is_model

length(genome_size)
str(genome_size)
class(genome_size)

c("maize", 1, 2, "tomato")

list(a = "maize", b = 1, c = 2, d = "tomato")

# Data frames ====
species_info <- data.frame(
    species_names = species,
    ngenes = genome_size
)

species_info

species_info$ngenes

species_info$model <- is_model
species_info

cbind(is_model, species_info)

# Exploratory functions for data frames
nrow(species_info)
ncol(species_info)
dim(species_info)
str(species_info)
summary(species_info)



## Exercises ====

#' The plants Brussels sprout, grapevine and apple belong to the 
#' families Brassicaceae, Vitaceae, and Rosaceae. 
#' Create a data frame named `species_families` with 2 columns named 
#' `species` and `family` representing such information.
#' 

species_families <- data.frame(
    species = c("Brussels sprouts", "grapevine", "apple"),
    family = c("Brassicaceae", "Vitaceae", "Rosaceae")
)

species_families



#' When you install R, it already comes with some example data sets. 
#' One of them is `airquality`, a data frame containing New York air 
#' quality measurements from May to September 1973. Inspect this data frame 
#' and answer the following questions:
#'     
#' 1. How many rows are there?
#' 2. How many columns are there?
#' 3. What are the column names?
#' 4. What are the classes of each column?

str(airquality)




# Indexing and subsetting vectors
species[2]
species[1]
species[c(3,2)]

species[-3]

species[2]
species[-c(1,3)]

species[c(TRUE, TRUE, FALSE)]


# Indexing and subsetting data frames
species_info

species_info[2,2]
species_info[3,1]
species_info[c(1,2), c(1,2)]
species[1:2, 1:2]

species_info[ , c(1,3)]
species_info[2, ]

species_info$ngenes
species_info[, 2]
species_info[, "ngenes"]

# Logical expressions: ==, !=, >, <, >=, <=
species_info[species_info$model == TRUE, ]

species_info[species_info$ngenes >35000, ]

students <- data.frame(
    student = paste0("student", 1:100),
    age = round(runif(100, 20, 30))
)
students

students[students$age >= 25 & students$age <= 27, ] |>
    nrow()

nrow(students[students$age >= 25 & students$age <= 27, ])
    


## Exercises ====

#' Subset the `airquality` data set to answer the following questions:
#' 
#' 1. How many days (rows) observations have ozone levels >40 ppb?
#' 2. How many days have wind speed between 10 and 15 mph?
#' 3. What are the minimum and maximum temperature?
#' 4. How many days have solar radiation <100 Langleys?
 
head(airquality)

# Q1
airquality[airquality$Ozone > 40 & !is.na(airquality$Ozone), ] |> nrow()

# Q2
airquality[airquality$Wind > 10 & airquality$Wind < 15, ] |> nrow()

# Q3
summary(airquality)

# Q4
airquality[airquality$Solar.R < 100 & !is.na(airquality$Solar.R), ] |>
    nrow()


na.omit(airquality)
