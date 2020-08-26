#Load Libraries
library(ggplot2)
library(ape)

#ggtree and emojifont can be installed from bioconductor
#if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
#BiocManager::install("ggtree")
#BiocManager::install("emojifont")

library(ggtree)
library(emojifont)

## datasets

# load datasets from a R Data File
load("./data/datasets.RData")

# You may go to the plotting step or you could also edit the previously loaded datasets by uncommenting and modifying the following lines

## strict datasets (only plants, clear species ID)

#solanales <- "( sweet_potato, ( hot_pepper, ( eggplant, ( potato, tomato))));"

#monocots <- "( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice ))))));"

#superasterids <- "( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, ( eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom)))));"

#superrosids <- "( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (hibiscus, (( tangerine, lemon ), ( maple_leaf)))));"

#angiosperms <- "( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), ( hibiscus, (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, (eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom))))))));"

#complete <- "( evergreen_tree,( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), ( hibiscus, (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, (eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom)))))))));"

## relaxed datasets (plant byproducts, debatable species ID)

#solanales_r <- "( sweet_potato, ( smoking,( hot_pepper, ( eggplant, ( potato, tomato)))));"

#monocots_r <- "( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice ))))));"

#superasterids_r <- "( cactus, ( kiwi_fruit,(( cocktail, ( sweet_potato, ( hot_pepper, ( eggplant, ( potato, tomato))))), ( carrot,( sunflower, blossom)))));"

#superrosids_r <- "(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), ( maple_leaf))))));"

#angiosperms_r <- "( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, (corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), ((apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit,(( cocktail, (sweet_potato, ( smoking,( hot_pepper, ( eggplant, ( potato, tomato)))))), ( carrot,( sunflower, blossom))))))));"

#complete_r <- "(( herb, four_leaf_clover),( evergreen_tree,( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), (maple_leaf))))),( cactus, ( kiwi_fruit,(( cocktail, ( sweet_potato, ( smoking,( hot_pepper, ( eggplant, ( potato, tomato)))))), ( carrot,( sunflower, blossom))))))))));"

phylomoji<- read.tree(text=complete) # "text=" name of the dataset you want

ggtree(phylomoji, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji", caption="powered by ggtree + emojifont")

# Example of complete_relaxed dataset

phylomoji <- read.tree(text=complete_r)

ggtree(phylomoji, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji (Relaxed Dataset)", caption="powered by ggtree + emojifont")

# Example of ultrametric_relaxed dataset
# ultrametric_r <- read.tree("./data/pp_ultrametric.tree")

ggtree(ultrametric_r, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji',size=6, vjust=0.5, hjust = 0.5, offset = 33) +
  labs(title="#PlantPhylomoji (Ultrametric)", caption="powered by ggtree + emojifont")

# Example of subset "superrosids"
phylomoji<- read.tree(text=superrosids)

ggtree(phylomoji, layout="circular") +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="#PlantPhylomoji (Superrosids)", caption="powered by ggtree + emojifont")

# # Save plot to file
# ggsave( "name.png",
#   plot = last_plot(),
#   device = NULL,
#   path = "./images",
#   scale = 1,
#   width = 5.08,
#   height = 4.06,
#   units = "cm",
#   dpi = 300,
#   limitsize = TRUE,)