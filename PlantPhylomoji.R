# Load Libraries ----------------------------------------------------------

library(ggplot2)
library(ape)
library(gridSVG)
# ggtree and emojifont can be installed from bioconductor
# if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install("ggtree")
# BiocManager::install("emojifont")

library(ggtree)
library(emojifont)

# Datasets ----------------------------------------------------------------

## load datasets(trees and vectors) from a R Data File
load("./data/datasets.RData")
## these datasets were build using datasetbuilder.R script and phylomaker.R
## the following datasets are included:

# complete.tree
# strict.tree
# ultrametric.tree
# angiosperms.tree
# monocots.tree
# superasterids.tree
# superrosids.tree
# solanales.tree

# Making your own subtrees ------------------------------------------------

## There are two ways to prune the tree, you could specify tips to remove using a vector.
# not_angiosperms <- c("four_leaf_clover", "evergreen_tree")
# angiosperms.tree <- drop.tip(plant_phylomoji.tree, not_angiosperms)

## Or you could specify a vector including only the tips you want in the tree.
# strict <- c("evergreen_tree","avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","sweet_potato","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
# strict.tree <- keep.tip (plant_phylomoji.tree, strict)

## You can prune the tree you want from the preloaded trees
# plantphylomoji.tree #topology only
# plantphylomoji.ul #ultrametric tree

## Reload PlantPhylomoji complete tree if necessary
# plantphylomoji.tree <- read.tree("./data/plantphylomoji.tree")
# plantphylomoji.ul <- read.tree("./data/plantphylomoji_ultrametric.tree")

# PlantPhylomoji  radial tree plots -----------------------------------------------

## #PlantPhylomoji The complete dataset (42 Emojis)
ggtree(plantphylomoji.tree, layout="circular") +
  geom_tiplab(parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji", caption="powered by ggtree + emojifont")
ps=grid.export("./images/complete_r_plant_phylomoji.svg", addClasses = T)

## #PlantPhylomoji Strict dataset (38 Emojis)
ggtree(strict.tree, layout="circular") +
  geom_tiplab(parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji (Strict Dataset)", caption="powered by ggtree + emojifont")
ps=grid.export("./images/complete_plant_phylomoji.svg", addClasses = T)

## #PlantPhylomoji Ultrametric tree (38 Emojis)
ggtree(plantphylomoji.ul, layout="circular") +
  geom_tiplab(parse='emoji',size=6, vjust=0.5, hjust = 0.5, offset = 28) +
  labs(title="#PlantPhylomoji (Ultrametric)", caption="powered by ggtree + emojifont")
ps=grid.export("./images/ultrametric.svg", addClasses = T)

## #PlantPhylomoji Superasterids (40 Emojis)
ggtree(superasterids.tree, layout="circular") +
  geom_tiplab(parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji (Superasterids)", caption="powered by ggtree + emojifont")
ps=grid.export("./images/superasterids.svg", addClasses = T)

## #PlantPhylomoji Solanales (6 Emojis)
ggtree(solanales.tree, layout="circular") +
  geom_tiplab(parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji (Solanales)", caption="powered by ggtree + emojifont")
ps=grid.export("./images/solanales.svg", addClasses = T)
