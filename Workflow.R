#Libraries
library(stylo)#for stylometry and for pre-processing of corpora
library(plotly)#for interactive plots
library(tidyverse)#for data manipulation and ggplot2
# To launch the GUI
stylo()

# it is better to save the outcome directly to a variable
# for re-usage and for more info
res = stylo()

sc_HCA_1gram = stylo()

# the following should create the same as above
# Analysis type CA = Hierarchical cluster analysis,
# MDS = multidimensional scaling
# PCV = Principal component analysis (covariance)
saga_corpus_cluster_1gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 1,
                                preserve.case = FALSE,
                                mfw.min = 500,
                                mfw.max = 500,
                                mfw.incr = 100,
                                start.at = 1,
                                culling.min = 0,
                                culling.max = 0,
                                culling.incr = 20,
                                mfw.list.cutoff = 5000,
                                delete.pronouns = FALSE,
                                use.existing.freq.tables = FALSE,
                                use.existing.wordlist = FALSE,
                                use.custom.list.of.files = FALSE,
                                analysis.type = "CA",
                                distance.measure = "delta",
                                sampling = "no.sampling",
                                display.on.screen = TRUE,
                                write.pdf.file = FALSE,
                                write.jpg.file = FALSE,
                                write.svg.file = FALSE,
                                write.png.file = FALSE,
                                plot.custom.height = 15,
                                plot.custom.width = 15,
                                plot.font.size = 2,
                                plot.line.thickness = 1,
                                text.id.on.graphs = "both",
                                colors.on.graphs = "colors",
                                titles.on.graphs = TRUE,
                                label.offset = 3,
                                add.to.margins = 6,
                                dendrogram.layout.horizontal = TRUE,
                                pca.visual.flavour = "loadings",
                                save.distance.tables = FALSE,
                                save.analyzed.features = FALSE,
                                save.analyzed.freqs = FALSE,
                                dump.samples = FALSE
)

# re-use the frequency list, makes the process a lot faster!
# use.existing.freq.tables = TRUE,
saga_corpus_PCV_1gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 1,
                                preserve.case = FALSE,
                                mfw.min = 500,
                                mfw.max = 500,
                                mfw.incr = 100,
                                start.at = 1,
                                culling.min = 0,
                                culling.max = 0,
                                culling.incr = 20,
                                mfw.list.cutoff = 5000,
                                delete.pronouns = FALSE,
                                use.existing.freq.tables = TRUE,
                                use.existing.wordlist = FALSE,
                                use.custom.list.of.files = FALSE,
                                analysis.type = "PCV",
                                distance.measure = "delta",
                                sampling = "no.sampling",
                                display.on.screen = TRUE,
                                write.pdf.file = FALSE,
                                write.jpg.file = FALSE,
                                write.svg.file = FALSE,
                                write.png.file = FALSE,
                                plot.custom.height = 15,
                                plot.custom.width = 15,
                                plot.font.size = 2,
                                plot.line.thickness = 1,
                                text.id.on.graphs = "both",
                                colors.on.graphs = "colors",
                                titles.on.graphs = TRUE,
                                label.offset = 3,
                                add.to.margins = 6,
                                dendrogram.layout.horizontal = TRUE,
                                pca.visual.flavour = "loadings",
                                save.distance.tables = FALSE,
                                save.analyzed.features = FALSE,
                                save.analyzed.freqs = FALSE,
                                dump.samples = FALSE
)
# 2-grams @ 250 MFF
saga_corpus_cluster_2gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 2,
                                preserve.case = FALSE,
                                mfw.min = 250,
                                mfw.max = 250,
                                mfw.incr = 100,
                                start.at = 1,
                                culling.min = 0,
                                culling.max = 0,
                                culling.incr = 20,
                                mfw.list.cutoff = 5000,
                                delete.pronouns = FALSE,
                                use.existing.freq.tables = FALSE,
                                use.existing.wordlist = FALSE,
                                use.custom.list.of.files = FALSE,
                                analysis.type = "CA",
                                distance.measure = "delta",
                                sampling = "no.sampling",
                                display.on.screen = TRUE,
                                write.pdf.file = FALSE,
                                write.jpg.file = FALSE,
                                write.svg.file = FALSE,
                                write.png.file = FALSE,
                                plot.custom.height = 15,
                                plot.custom.width = 15,
                                plot.font.size = 2,
                                plot.line.thickness = 1,
                                text.id.on.graphs = "both",
                                colors.on.graphs = "colors",
                                titles.on.graphs = TRUE,
                                label.offset = 3,
                                add.to.margins = 6,
                                dendrogram.layout.horizontal = TRUE,
                                pca.visual.flavour = "classic",
                                save.distance.tables = FALSE,
                                save.analyzed.features = FALSE,
                                save.analyzed.freqs = FALSE,
                                dump.samples = FALSE
)

saga_corpus_PCV_2gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 2,
                                preserve.case = FALSE,
                                mfw.min = 250,
                                mfw.max = 250,
                                mfw.incr = 100,
                                start.at = 1,
                                culling.min = 0,
                                culling.max = 0,
                                culling.incr = 20,
                                mfw.list.cutoff = 5000,
                                delete.pronouns = FALSE,
                                use.existing.freq.tables = TRUE,
                                use.existing.wordlist = FALSE,
                                use.custom.list.of.files = FALSE,
                                analysis.type = "CA",
                                distance.measure = "delta",
                                sampling = "no.sampling",
                                display.on.screen = TRUE,
                                write.pdf.file = FALSE,
                                write.jpg.file = FALSE,
                                write.svg.file = FALSE,
                                write.png.file = FALSE,
                                plot.custom.height = 15,
                                plot.custom.width = 15,
                                plot.font.size = 2,
                                plot.line.thickness = 1,
                                text.id.on.graphs = "both",
                                colors.on.graphs = "colors",
                                titles.on.graphs = TRUE,
                                label.offset = 3,
                                add.to.margins = 6,
                                dendrogram.layout.horizontal = TRUE,
                                pca.visual.flavour = "classic",
                                save.distance.tables = FALSE,
                                save.analyzed.features = FALSE,
                                save.analyzed.freqs = FALSE,
                                dump.samples = FALSE
)

#Pre-Processing-------
#Loading Corpus and create n-grams

sc_1gram = load.corpus.and.parse(files = "all",
                                 corpus.dir = "corpus",
                                 markup.type= "plain",
                                 corpus.lang = "Other",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 1,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")

#create frequency list and table
sc_500MFW_1gram_l = make.frequency.list(sc_1gram, head=500)
sc_500MFW_1gram_t = make.table.of.frequencies(sc_1gram, sc_500MFW_1gram_l, relative=T)

#if you want to view the the z-scores
z_score_500MFW_1gram = scale(sc_500MFW_1gram_t[,1:500])

#calculate distance
#dist.delta = Burrows' delta
#dist.wurzburg = Cosine delta
dist_matrix = as.matrix(dist.delta(sc_500MFW_1gram_t))

md1 = cmdscale(dist_matrix, eig = TRUE)

headers=dimnames(md1$points)[[1]]

df=data.frame(id=seq(48), headers, x=unlist(md1$points[, 1]), y=unlist(md1$points[,2]), stringsAsFactors = F)

df$category = "other"
df$category[headers=="Egla"]="Egla"
df$category[headers=="Heimskringla"]="Hmsk"

fig = plot_ly(type="scatter",
              mode="markers",
              data=df, x=~x, y=~y,
              text=~headers,
              color=~category,
              colors=c("red", "green", "blue"),
              marker=list(size=15)
)
fig = fig %>% layout(title="MDS 1-gram 500MFW")              
fig

p=ggplot(df, aes(x,y))+
  theme_bw()+
  geom_point(data=df, col="black")+
  geom_point(data=df[df$headers=="Egla",], col="red")+
  geom_point(data=df[df$headers=="Heimskringla",], col="blue")+
  geom_text(aes(label = headers), hjust = -0.1)

ggplotly(p)


########DANISH TEXTS ML######
#working with XML!
setwd("./corpus_danish")
danish = stylo()

#Multiclass Classification using Support Vector Machine
setwd("..")
svm = classify() #lunch GUI

primary_c = load.corpus.and.parse(files = "all",
                                 corpus.dir = "primary_set",
                                 markup.type= "xml",
                                 corpus.lang = "Other",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 1,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")

secondary_c = load.corpus.and.parse(files = "all",
                                    corpus.dir = "secondary_set",
                                    markup.type= "xml",
                                    corpus.lang = "Other",
                                    splitting.rule = NULL,
                                    sampling = "no.sampling",
                                    sampling.with.replacement = FALSE,
                                    features = "w", 
                                    ngram.size = 1,
                                    preserve.case = FALSE,
                                    encoding = "UTF-8")

primary_l = make.frequency.list(primary_c, head=1000)
primary_t = make.table.of.frequencies(primary_c, primary_l, relative=T)

secondary_l = make.frequency.list(secondary_c, head=1000)
secondary_t = make.table.of.frequencies(secondary_c, secondary_l, relative=T)

#svm_1= perform.svm(training.set = primary_t, test.set = secondary_t)
delta = perform.delta(training.set = primary_t, test.set = secondary_t, distance="wurzburg", no.of.candidates = 3)
