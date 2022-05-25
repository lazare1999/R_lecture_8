# Load required packages
library(datasets) # contains iris dataset
library(cluster)  # clustering algorithms
library(factoextra) # visualization
library(purrr) # to use map_dbl() function
df
# Load and preprocess the dataset
df <- iris[, 1:4]
df <- na.omit(df)
df <- scale(df)
df
# Dissimilarity matrix
d <- dist(df, method = "euclidean")
d
# Hierarchical clustering using Complete Linkage
hc1 <- hclust(d, method = "complete" )

# Plot the obtained dendrogram
plot(hc1, cex = 0.6, hang = -1)