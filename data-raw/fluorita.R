maquinas = read.table("data-raw/maquinas.txt",header=T)
datos$maq <- factor(datos$maq)
fluorita$mez <- factor(fluorita$mez,labels=c('1','2','3','4','5','6'))
save(fluorita,file="data/fluorita.rda")
