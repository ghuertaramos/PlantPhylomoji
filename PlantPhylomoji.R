#Load Libraries
library(ggplot2)

#ggtree and emojifont can be insalled from bioconductor
#if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
#BiocManager::install("ggtree")
#BiocManager::install("emojifont")

library(ggtree)
library(emojifont)

# strict parenthetical tree
# only plants, clear species ID
tree_text <- "(evergreen_tree,(avocado,((tulip, ( palm_tree, ( banana, ( pineapple, (corn, ( tanabata_tree, ear_of_rice )))))),((grapes, (((peanuts, shamrock), ((( rose, strawberry ), ((apple, pear ), ( peach, (cherry_blossom, cherries) ))), (chestnut, (jack_o_lantern, (watermelon, (cucumber, melon)))))), (hibiscus, (( tangerine, lemon ), (maple_leaf))))),(cactus, (kiwi_fruit, ((sweet_potato, (hot_pepper, (eggplant, (potato, tomato)))), (carrot,(sunflower, blossom)))))))));"

x <- read.tree(text=tree_text)

ggtree(x, layout="circular") +
  xlim(NA, 13) + ylim(NA, 39) +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.9) +
  labs(title="plant phylomoji", caption="powered by ggtree + emojifont")

tree_text <- "((herb,four_leaf_clover),(evergreen_tree,(avocado,((tulip, ( palm_tree, ( banana, ( pineapple, (corn, ( tanabata_tree, ear_of_rice )))))),((grapes, (((peanuts, shamrock), ((( rose, strawberry ), ((apple, pear ), ( peach, (cherry_blossom, cherries) ))), (chestnut, (jack_o_lantern, (watermelon, (cucumber, melon)))))), ((hibiscus, chocolate_bar), (( tangerine, lemon ), (maple_leaf))))),(cactus, (kiwi_fruit,((cocktail, (sweet_potato, (smoking,(hot_pepper, (eggplant, (potato, tomato)))))), (carrot,(sunflower, blossom))))))))));"

x <- read.tree(text=tree_text)

ggtree(x, layout="circular") +
  xlim(NA, 17) + ylim(NA, 44) +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 1.1) +
  labs(title="plant phylomoji", caption="powered by ggtree + emojifont")

