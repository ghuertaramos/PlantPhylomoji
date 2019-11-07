#Load Libraries
library(ggplot2)

#ggtree and emojifont can be installed from bioconductor
#if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
#BiocManager::install("ggtree")
#BiocManager::install("emojifont")

library(ggtree)
library(emojifont)
## datasets
## strict datasets (only plants, clear species ID)
# monocots
# superasterids
# superrosids
# angiosperms
# complete

## relaxed datasets (plant byproducts, debatable species ID)
# monocots_r
# superasterids_r
# superrosids_r
# angiosperms_r
# complete_r

# load datasets
load("./data/datasets.RData")

# change "text=" to the dataset you want
x <- read.tree(text=complete)

ggtree(x, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="plant phylomoji", caption="powered by ggtree + emojifont")

# Example of complete_relaxed dataset

x <- read.tree(text=complete_r)

ggtree(x, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="plant phylomoji (Relaxed Dataset)", caption="powered by ggtree + emojifont")

# Example of subset "superrosids"
x <- read.tree(text=superrosids)

ggtree(x, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="plant phylomoji (Superrosids)", caption="powered by ggtree + emojifont")