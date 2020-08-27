##### Make a tree in phylomaker for the plantphylomoji dataset
## Based on a script by Marcial escudero, available at:
## https://github.com/amesclir/PlantPhylomojiChromEvol/blob/master/PlantPhylomojiChromEvol.rmd

#devtools::install_github("jinyizju/V.PhyloMaker")
library(ape)
library(ggtree)
library(V.PhyloMaker)

phylomoji<- read.csv("./data/plantphylomoji.csv" ) 

genus<-sapply(strsplit(as.character(phylomoji$Species)," "),function(x) x[1])

species<-sapply(strsplit(as.character(phylomoji$Species)," "),function(x) x[2])

phylomoji_phylo <- data.frame(species = phylomoji$Species, genus = genera, family = phylomoji$Family)

phylomoji.tree <- phylo.maker(phylomoji_phylo, tree = GBOTB.extended, nodes = nodes.info.1, output.sp.list = FALSE, output.tree = FALSE, r = 1)

phylomoji.tree.ul <- phylomoji.tree$scenario.3

emoji.tips <- c("sunflower",
                "blossom",
                "carrot",
                "cocktail",
                "potato",
                "eggplant",
                "tomato",
                "hot_pepper",
                "smoking",
                "sweet_potato",
                "kiwi_fruit",
                "cactus",
                "shamrock",
                "peanuts",
                "strawberry",
                "rose",
                "apple",
                "pear",
                "peach",
                "cherry_blossom",
                "cherries",
                "cucumber",
                "melon",
                "watermelon",
                "jack_o_lantern",
                "chestnut",
                "hibiscus",
                "chocolate_bar",
                "lemon",
                "tangerine",
                "maple_leaf",
                "grapes",
                "corn",
                "tanabata_tree",
                "ear_of_rice",
                "pineapple",
                "palm_tree",
                "tulip",
                "avocado",
                "evergreen_tree",
                "four_leaf_clover")

phylomoji.tree.ul$tip.label <- emoji.tips

# write.tree(phylomoji.tree.ul, "./data/plantphylomoji_ultrametric.tree")
# 
# ggtree(phylomoji.tree.ul, layout="circular") +
#   geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 30) +
#   labs(title="#PlantPhylomoji", caption="powered by ggtree + emojifont")
