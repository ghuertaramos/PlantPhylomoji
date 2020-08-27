# datasets for Rdata (preloaded datasets)

library(ggplot2)

#ggtree and emojifont can be installed from bioconductor
#if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
#BiocManager::install("ggtree")
#BiocManager::install("emojifont")

library(ggtree)
library(emojifont)
library(ape)

plantphylomoji.tree <- read.tree("./data/plantphylomoji.tree")
plantphylomoji.ul <- read.tree("./data/plantphylomoji_ultrametric.tree")

complete <-c("herb","four_leaf_clover","evergreen_tree","avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","chocolate_bar","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","cocktail","sweet_potato","smoking","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
complete.tree <- keep.tip (plantphylomoji.tree, complete)
strict <-c("evergreen_tree","avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","sweet_potato","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
strict.tree <- keep.tip (plantphylomoji.tree, strict)
angiosperms <- c("avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","chocolate_bar","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","cocktail","sweet_potato","smoking","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
angiosperms.tree <- keep.tip (plantphylomoji.tree, angiosperms)
monocots <- c("tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice")
monocots.tree <- keep.tip (plantphylomoji.tree, monocots)
superasterids <- c("cactus","kiwi_fruit","cocktail","sweet_potato","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
superasterids.tree <- keep.tip (plantphylomoji.tree, superasterids)
superrosids <- c("grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","chocolate_bar","tangerine","lemon","maple_leaf")
superrosids.tree <- keep.tip (plantphylomoji.tree, superrosids)
solanales <- c("sweet_potato","smoking","hot_pepper","eggplant","potato","tomato")
solanales.tree <- keep.tip (plantphylomoji.tree, solanales)
