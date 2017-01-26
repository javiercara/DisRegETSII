fluorita = read.table("data-raw/fluorita.txt",header=T)
fluorita$fluo <- factor(fluorita$fluo,labels=c('0%','1%','2%','3%','4%'))
fluorita$mez <- factor(fluorita$mez,labels=c('1','2','3','4','5','6'))
save(fluorita,file="data/fluorita.rda")
