library(stylo)
# CA, MDS, PCV
setwd("C:/Users/N/Documents/Github/atds2022stylo")
####CA------------
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
                                mfw.min = 300,
                                mfw.max = 300,
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

saga_corpus_cluster_3gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 3,
                                preserve.case = FALSE,
                                mfw.min = 150,
                                mfw.max = 150,
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
####MDS----------------
saga_corpus_mds_1gram=stylo(gui=F,
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
                                analysis.type = "MDS",
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

saga_corpus_mds_2gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 2,
                                preserve.case = FALSE,
                                mfw.min = 300,
                                mfw.max = 300,
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
                                analysis.type = "MDS",
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

saga_corpus_mds_3gram=stylo(gui=F,
                                corpus.format = "plain",
                                corpus.lang = "Other",
                                corpus.dir="corpus",
                                analyzed.features = "w",
                                ngram.size = 3,
                                preserve.case = FALSE,
                                mfw.min = 150,
                                mfw.max = 150,
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
                                analysis.type = "MDS",
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
###PCV----
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
                            use.existing.freq.tables = FALSE,
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
                            mfw.min = 300,
                            mfw.max = 300,
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
                            pca.visual.flavour = "classic",
                            save.distance.tables = FALSE,
                            save.analyzed.features = FALSE,
                            save.analyzed.freqs = FALSE,
                            dump.samples = FALSE
)

saga_corpus_PCV_3gram=stylo(gui=F,
                            corpus.format = "plain",
                            corpus.lang = "Other",
                            corpus.dir="corpus",
                            analyzed.features = "w",
                            ngram.size = 3,
                            preserve.case = FALSE,
                            mfw.min = 150,
                            mfw.max = 150,
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
                            pca.visual.flavour = "classic",
                            save.distance.tables = FALSE,
                            save.analyzed.features = FALSE,
                            save.analyzed.freqs = FALSE,
                            dump.samples = FALSE
)

