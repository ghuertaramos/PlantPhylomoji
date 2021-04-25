24/04/2021
I added a funding button, will this incetivize the development? 
I noticed the R  script no longer produces the nice looking emojis natively, so I used the solution from ggtree manual to use librarySVG to generate vectorized files, It worked only on a linux machine but not on windows. I'm thinking about merging the datasetbuilder, phylomaker and plotting scripts it doesn't make to sense to me anymore to have them as separate files.

27/8/2020
The previous ultrametric tree had a weird topology, I made a new ultrametric tree using V:Phylomaker based on Escudero & Wendel, 2020 
I've also tidied up the R script for the plots and datasets.

26/8/2020
Added a ultrametric tree dataset based on Qian & Jin 2016

25/8/2020-2
I decided to add a DOI through Zenodo, this also means todays is the first official release as a requirement for publication.

25/8/2020
After a long while I am picking up this project, during last year I've only added minor fixes. However,  this semester I will be teaching an undergraduate systematics course, so I'll probably be able to progress on generating figures and lectures using this dataset.
Another priority is to make the dataset citable. Through the recent publication of [Escudero & Wendel, 2020](https://nph.onlinelibrary.wiley.com/doi/abs/10.1111/nph.16802), I realize this project could have a wider impact and citations would be desirable.

18/10/2019
I began subsetting the plant phylomoji dataset. It could be easier to work with a reduced number of terminals on some scenarios.
! I want to improve visualization and make a first tutorial on subsetting, clade annotation and labeling

Here are some examples of the datasets


"Relaxed version" includes plant byproducts and species with dubious identifications.

![](./images/RelaxedPhylomoji.png) 

SuperRosids Dataset

![](./images/superrosids.png) 

14/10/2019
GithubRepo is now active
I added add ferns 🌿 (genus Mickelia) and 🍀 (genus Marsilea) on the relaxed dataset. Thanks to  [Alejandra Vasco](https://twitter.com/avascog) 
I added 🎃, 🍫, and 🍸. Thanks to [Brandon Hurr](https://twitter.com/bhive01)  and [Carmen Ulloa](https://twitter.com/meriania) 
! Lettuce, Mango and Broccoli can't be rendered, I will need to look in to it.

11/10/19

It all started with this tweet

<blockquote class="twitter-tweet" data-theme="dark"><p lang="en" dir="ltr">I couldn&#39;t find it anywhere, so I made a phylogeny of plant emojis using <a href="https://twitter.com/hashtag/ggtree?src=hash&amp;ref_src=twsrc%5Etfw">#ggtree</a>. Please, do let me know of any mistakes!<br>Code is available on <a href="https://t.co/1Qvzkkxibi">https://t.co/1Qvzkkxibi</a> <a href="https://twitter.com/hashtag/phylomoji?src=hash&amp;ref_src=twsrc%5Etfw">#phylomoji</a> <a href="https://t.co/VDF0eD8FN7">pic.twitter.com/VDF0eD8FN7</a></p>&mdash; Guillermo Huerta-Ramos (@ghuertaramos) <a href="https://twitter.com/ghuertaramos/status/1182813259633696768?ref_src=twsrc%5Etfw">October 12, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 
