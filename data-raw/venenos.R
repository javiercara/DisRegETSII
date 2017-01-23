venenos = read.table("data-raw/venenos.txt",header=T)
venenos$ven <- factor(venenos$ven,labels=c('I','II','III'))
venenos$ant <- factor(venenos$ant,labels=c('A','B','C','D'))
save(venenos,file="data/venenos.rda")
