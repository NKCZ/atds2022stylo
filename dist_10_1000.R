library(stylo)
library(ggplot2)
library(tidyverse)

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

sc_2gram = load.corpus.and.parse(files = "all",
                                 corpus.dir = "corpus",
                                 markup.type= "plain",
                                 corpus.lang = "Other",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 2,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")

sc_3gram = load.corpus.and.parse(files = "all",
                                 corpus.dir = "corpus",
                                 markup.type= "plain",
                                 corpus.lang = "Other",
                                 splitting.rule = NULL,
                                 sampling = "no.sampling",
                                 sampling.with.replacement = FALSE,
                                 features = "w", 
                                 ngram.size = 3,
                                 preserve.case = FALSE,
                                 encoding = "UTF-8")

sc_1000MFW_1gram_l = make.frequency.list(sc_1gram, head=1000)
sc_1000MFW_1gram_t = make.table.of.frequencies(sc_1gram, sc_1000MFW_1gram_l, relative=T)

sc_1000MFW_2gram_l = make.frequency.list(sc_2gram, head=1000)
sc_1000MFW_2gram_t = make.table.of.frequencies(sc_2gram, sc_1000MFW_2gram_l, relative=T)

sc_1000MFW_3gram_l = make.frequency.list(sc_3gram, head=1000)
sc_1000MFW_3gram_t = make.table.of.frequencies(sc_3gram, sc_1000MFW_3gram_l, relative=T)


i=500

#-----------------

for (i in seq(10,1000)){
  
  MFW1=sc_1000MFW_1gram_t[,1:i]
  dist_matrix = as.matrix(dist.delta(MFW1))
  
  MFW2=sc_1000MFW_2gram_t[,1:i]
  dist_matrix = as.matrix(dist.delta(MFW2))
  
  MFW3=sc_1000MFW_3gram_t[,1:i]
  dist_matrix = as.matrix(dist.delta(MFW3))
  
}

#---------------
i=10#for test
####TAb####
####1g####
res_1gram=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_1gram) = c("E", "H", "MFW")
for (i in seq(10,1000)){
  
  MFW1=sc_1000MFW_1gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.delta(MFW1)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  pos_Egla = which(colnames(dist_matrix)=="Egla")#not necessary
  pos_HMSK = which(colnames(dist_matrix)=="Heimskringla")
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_1gram$E[i]=closest_to_E
  res_1gram$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_1gram$H[i]=closest_to_H
  cat(i,"\r")
}

res_1gram %>% count(E)
res_1gram %>% count(H)

####2g####
res_2gram=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_2gram) = c("E", "H", "MFW")

i=10 # for test
for (i in seq(10,1000)){
  
  MFW2=sc_1000MFW_2gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.delta(MFW2)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_2gram$E[i]=closest_to_E
  res_2gram$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_2gram$H[i]=closest_to_H
  cat(i,"\r")
}

res_2gram %>% count(E)
res_2gram %>% count(H)


####3g####
res_3gram=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_3gram) = c("E", "H", "MFW")

i=10 # for test
for (i in seq(10,1000)){
  
  MFW3=sc_1000MFW_3gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.delta(MFW3)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_3gram$E[i]=closest_to_E
  res_3gram$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_3gram$H[i]=closest_to_H
  cat(i,"\r")
}

res_3gram %>% count(E)
res_3gram %>% count(H)

############COSINE DELTA DISTANCE#########
####1g####
res_1gram_cosD=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_1gram_cosD) = c("E", "H", "MFW")
for (i in seq(10,1000)){
  
  MFW1=sc_1000MFW_1gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.wurzburg(MFW1)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_1gram_cosD$E[i]=closest_to_E
  res_1gram_cosD$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_1gram_cosD$H[i]=closest_to_H
  cat(i,"\r")
}

res_1gram_cosD %>% count(E)
res_1gram_cosD %>% count(H)

####2g####
res_2gram_cosD=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_2gram_cosD) = c("E", "H", "MFW")

for (i in seq(10,1000)){
  
  MFW2=sc_1000MFW_2gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.wurzburg(MFW2)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_2gram_cosD$E[i]=closest_to_E
  res_2gram_cosD$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_2gram_cosD$H[i]=closest_to_H
  cat(i,"\r")
}

res_2gram_cosD %>% count(E)
res_2gram_cosD %>% count(H)


####3g####
res_3gram_cosD=data.frame(matrix(ncol = 3, nrow = 1000))
colnames(res_3gram_cosD) = c("E", "H", "MFW")


for (i in seq(10,1000)){
  
  MFW3=sc_1000MFW_3gram_t[,1:i]
  dist_matrix = as.data.frame(as.matrix(dist.wurzburg(MFW3)))
  h=colnames(dist_matrix)
  dist_matrix = cbind(dist_matrix, h)
  
  closest_to_E = dist_matrix %>% select("Egla", h) %>% arrange(`Egla`)
  closest_to_E = closest_to_E$h[2]
  res_3gram_cosD$E[i]=closest_to_E
  res_3gram_cosD$MFW[i]=i
  closest_to_H = dist_matrix %>% select("Heimskringla", h) %>% arrange(`Heimskringla`)
  closest_to_H = closest_to_H$h[2]
  res_3gram_cosD$H[i]=closest_to_H
  cat(i,"\r")
}

res_3gram_cosD %>% count(E)
res_3gram_cosD %>% count(H)