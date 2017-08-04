# Setting the working directory
rm(list=ls(all=TRUE))

# Load the mclust library
library(mclust)

# Save USArrests data in to data varibale
data = USArrests

# Look at the USArrests data
summary(data)
head(data)

# The R function Mclust performs model-based clustering for a range of models and a variety of values of k:
arrest_clus <- Mclust(data)

# The clustering vector:
data$Cluster = arrest_clus$classification
head(data)

# This gives the probabilities of belonging to each cluster for every object:
arrest_clus$z
round(arrest_clus$z,2)

data.frame(data, round(arrest_clus$z,2))