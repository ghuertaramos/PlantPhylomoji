#Load Libraries
library(ggplot2)

#ggtree and emojifont can be installed from bioconductor
#if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
#BiocManager::install("ggtree")
#BiocManager::install("emojifont")

library(ggtree)
library(emojifont)

# load datasets
load("./data/datasets.RData")

## datasets
## strict datasets (only plants, clear species ID)

#monocots <- "( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice ))))));"

#superasterids <- "( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, ( eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom)))));"

#superrosids <- "( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (hibiscus, (( tangerine, lemon ), ( maple_leaf)))));"

#angiosperms <- "( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), ( hibiscus, (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, (eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom))))))));"

#complete <- "( evergreen_tree,( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), ( hibiscus, (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit, (( sweet_potato, ( hot_pepper, (eggplant, ( potato, tomato)))), ( carrot,( sunflower, blossom)))))))));"

## relaxed datasets (plant byproducts, debatable species ID)

#monocots_r <- "( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice ))))));"

#superasterids_r <- "( cactus, ( kiwi_fruit,(( cocktail, ( sweet_potato, ( hot_pepper, ( eggplant, ( potato, tomato))))), ( carrot,( sunflower, blossom)))));"

#superrosids_r <- "(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), ( maple_leaf))))));"

#angiosperms_r <- "( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, (corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), ((apple, pear ), ( peach, (cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), ( maple_leaf))))),( cactus, ( kiwi_fruit,(( cocktail, (sweet_potato, ( smoking,( hot_pepper, ( eggplant, ( potato, tomato)))))), ( carrot,( sunflower, blossom))))))));"

#complete_r <- "(( herb, four_leaf_clover),( evergreen_tree,( avocado,(( tulip, ( palm_tree, ( banana, ( pineapple, ( corn, ( tanabata_tree, ear_of_rice )))))),(( grapes, ((( peanuts, shamrock), ((( rose, strawberry ), (( apple, pear ), ( peach, ( cherry_blossom, cherries) ))), ( chestnut, ( jack_o_lantern, ( watermelon, ( cucumber, melon)))))), (( hibiscus, chocolate_bar), (( tangerine, lemon ), (maple_leaf))))),( cactus, ( kiwi_fruit,(( cocktail, ( sweet_potato, ( smoking,( hot_pepper, ( eggplant, ( potato, tomato)))))), ( carrot,( sunflower, blossom))))))))));"


# "text=" name of the dataset you want

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