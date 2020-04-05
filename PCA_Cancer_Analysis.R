# Marshall Bradley
# PCA on Cancer Cell Data

# Load the data
load("LeukError.rdata")

# Install and load packages
# install.packages("rgl")
library(RColorBrewer)
library(rgl)

# Create a color palette
color <- palette(brewer.pal(n = 3, name = "Dark2"))

# Subset the data and visually inspect it
leuk2 <- leuk[,c(5001, 1:5000)]
View(leuk2)

# Create a table of which sample belongs to which type of cell
table(leuk2[1])

# Randomly select two columns and plot them against each other
randomColumns = sample(2:5001,2)
plot(leuk[,randomColumns], col = leuk2$V5001)

# Run the PCA and plot it
pcaOut = prcomp(leuk2[,2:5001],3, scale = F)
plot(pcaOut$x[,1],pcaOut$x[,2], col = leuk2$V5001, pch = 19, xlab = "Principal Component 1", ylab = "Principal Component 2", main = 'Cancer Samples Projected into 2-dimensions')
text(pcaOut$x[,1], pcaOut$x[,2], labels=row.names(leuk2), pos=3)
legend(40000, -20000, legend = c("ALL-B", "ALL-T", "AML"), pch = 19, col = color)
# From this plot, we can see that it is probable that sample 22 was mislabeled as ALL-B, when it should be ALL-T


# Find out how much variation is explained by the first two components
sum(pcaOut$sdev[1:2]^2)/sum(pcaOut$sdev^2)
# The first two components explain about 36% of the variation.

# We can do the same thing with the first three components
plot3d(x = pcaOut$x[,1], y = pcaOut$x[,2],z= pcaOut$x[,3],col = colors, xlab = "Principal Component 1", ylab = "Principal Component 2", zlab = "Principal Component 3")
sum(pcaOut$sdev[1:3]^2)/sum(pcaOut$sdev^2)
# The first three components explain about 47% of the variation.