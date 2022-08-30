#Change the filename of Saga Corpus xml files
#to a more readable version

library(stringr)
library(stylo)
library(xml2)

setwd("C:/Users/N/Studium/Skandinavistik/atds2022")

meta = read.csv(file = "saga_corpus_metadata.csv", header = T, sep = ";")

path_ = "C:/Users/N/Studium/Skandinavistik/atds2022/Saga Corpus/"


for (f in dir(path_)){
  if(f %in% c("sagHdr.xml")){next}
  alt = meta$Saga.title[which(meta$Document==f)]
  alt = str_replace_all(alt, " saga", "")
  alt = paste0("C:/Users/N/Studium/Skandinavistik/atds2022/corpus/", alt, ".txt")
  txt = delete.markup(scan(paste0(path_,f), what=character()), markup.type ="xml")
  #file.copy(paste0(path_,f), alt)
  write(x=txt, file=alt)
}

#afterwards it is easier to change by hand, than writing some regex