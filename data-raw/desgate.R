desgaste = read.table("data-raw/desgaste.txt",header=T)
desgaste$tipo = factor(desgaste$tipo,labels=c("A","B"))
desgaste$alg = factor(desgaste$alg,labels=c("10","20","30"))
save(desgaste,file="data/desgaste.rda")
