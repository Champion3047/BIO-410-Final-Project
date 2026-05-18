# Load required libraries
library(Biostrings)
library(DECIPHER)
library(ape)
library(phangorn)

# Read in megahit assembly results for each sample
allcontigs <- c()

for(i in 1:6){
  
  contigs <- readDNAStringSet(
    paste0(
      "C:/Users/champ/Downloads/t",
      i,
      "_out/final.contigs.fa"
    )
  )
  
  allcontigs <- c(allcontigs, contigs)
}

# Flatten list
allcontigs <- do.call(c, allcontigs)

# Keep only large contigs (>5kb)
toalign <- allcontigs[which(nchar(allcontigs) > 5000)]

# Rename sequences
names(toalign) <- 1:length(toalign)

# Perform multiple sequence alignment
alignment <- AlignSeqs(toalign)

# Save alignment as HTML
BrowseSeqs(
  alignment,
  htmlFile = "alignment.html"
)

# Build phylogenetic tree
# Convert alignment to phyDat object
phydat <- phyDat(as.matrix(alignment), type = "DNA")

# Create distance matrix
dm <- dist.ml(phydat)

# Build neighbor joining tree
treeNJ <- NJ(dm)

# Fit maximum likelihood tree
fit <- pml(treeNJ, data = phydat)

fitML <- optim.pml(
  fit,
  model = "JC",
  rearrangement = "stochastic"
)

# Final tree
tree <- fitML$tree

# Save tree image
png(
  "phylogenetic_tree.png",
  width = 1000,
  height = 800
)

plot(tree)

dev.off()
