# build datasets for Rdata file (preloaded datasets) and tree files

library(ape)
library(ggtree)


plant_phylomoji <-"((herb,four_leaf_clover),(evergreen_tree,(avocado,((tulip,(palm_tree,(banana,(pineapple,(corn,(tanabata_tree,ear_of_rice)))))),((grapes,(((peanuts,shamrock),(((rose,strawberry),((apple,pear),(peach,(cherry_blossom,cherries)))),(chestnut,(jack_o_lantern,(watermelon,(cucumber,melon)))))),((hibiscus,chocolate_bar),((tangerine,lemon),(maple_leaf))))),(cactus,(kiwi_fruit,((cocktail,(sweet_potato,(smoking,(hot_pepper,(eggplant,(potato,tomato)))))),(carrot,(sunflower,blossom))))))))));"

plantphylomoji.tree <- read.tree(text=plant_phylomoji)

#ultrametric tree was build on a different script phylomaker.R
plantphylomoji.ul <- read.tree("./data/plantphylomoji_ultrametric.tree")

complete <-c("herb","four_leaf_clover","evergreen_tree","avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","chocolate_bar","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","cocktail","sweet_potato","smoking","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
complete.tree <- keep.tip (plantphylomoji.tree, complete)

strict <-c("evergreen_tree","avocado","tulip","palm_tree","banana","pineapple","corn","tanabata_tree","ear_of_rice","grapes","peanuts","shamrock","rose","strawberry","apple","pear","peach","cherry_blossom","cherries","chestnut","jack_o_lantern","watermelon","cucumber","melon","hibiscus","tangerine","lemon","maple_leaf","cactus","kiwi_fruit","sweet_potato","hot_pepper","eggplant","potato","tomato","carrot","sunflower","blossom")
strict.tree <- keep.tip (plantphylomoji.tree, strict)

ultrametric.tree <- plantphylomoji.ul

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

#save plant_phylomoji tree

write.tree(plantphylomoji.tree,"./data/plantphylomoji.tree" )

#save RData image
save.image("./data/datasets.RData") 
