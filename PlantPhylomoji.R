
library(ggplot2)
library(ggtree)
library(emojifont)

  tree_text <- "(evergreen_tree,(avocado,((tulip, ( palm_tree, ( banana, ( pineapple, (corn, ( tanabata_tree, ear_of_rice )))))),((grapes, (((peanuts, shamrock), ((( rose, strawberry ), ((apple, pear ), ( peach, (cherry_blossom, cherries) ))), (chestnut, (jack_o_lantern, (watermelon, (cucumber, melon)))))), (hibiscus, (( tangerine, lemon ), (maple_leaf))))),(cactus, (kiwi_fruit, ((sweet_potato, (hot_pepper, (eggplant, (potato, tomato)))), (carrot,(sunflower, blossom)))))))));"
x <- read.tree(text=tree_text)
ggtree(x, layout="circular") +
  xlim(NA, 13) + ylim(NA, 39) +
  geom_tiplab(aes(color=label), parse='emoji', size=6, vjust=0.5, hjust = 0.5, offset = 0.6) +
  labs(title="plant phylomoji", caption="powered by ggtree + emojifont")

