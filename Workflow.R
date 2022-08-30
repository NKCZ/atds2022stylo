#Libraries
library(stylo)#for stylometry and for pre-processing of corpora

# To launch the GUI
stylo()

# it is better to save the outcome directly to a variable
# for re-usage and for more info
res = stylo()

sc_HCA_1gram = stylo()

# the following should create the same as above
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
                                pca.visual.flavour = "classic",
                                save.distance.tables = FALSE,
                                save.analyzed.features = FALSE,
                                save.analyzed.freqs = FALSE,
                                dump.samples = FALSE
)

saga_corpus_cluster_2gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 2,
                                preserve.case = FALSE,
                                mfw.min = 1000,
                                mfw.max = 1000,
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


#Pre-Processing-------
#Loading Corpus and create n-grams

#1-gram
sc_1gram = load.corpus.and.parse(files = "all",
                                 corpus.dir = "corpus",
                                 markup.type= "plain",
                                 corpus.lang = "English",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 1,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")
#2-gram
sc_2gram = load.corpus.and.parse(files = "all",
                                 corpus.dir = "corpus",
                                 markup.type= "plain",
                                 corpus.lang = "English",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 2,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")

# Create frequencies and associated tables
sc_1000MFW_1gram_l = make.frequency.list(sc_1gram, head=500)
sc_1000MFW_1gram_t = make.table.of.frequencies(sc_1gram, sc_1000MFW_1gram_l, relative=T)

sc_1000MFW_2gram_l = make.frequency.list(sc_2gram, head=250)
sc_1000MFW_2gram_t = make.table.of.frequencies(sc_2gram, sc_1000MFW_2gram_l, relative=T)

# Calculate burrows delta
dist_matrix = as.matrix(dist.delta(sc_1000MFW_1gram_t))
# Apply multi dimensional scaling
md1 = cmdscale(dist_matrix, eig = TRUE) #MDS

dist_matrix = as.matrix(dist.delta(MFW2))
md2 = cmdscale(dist_matrix, eig = TRUE)