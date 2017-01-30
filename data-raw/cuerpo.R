cuerpo = read.table("data-raw/cuerpo.txt",header=T,row.names=1)
save(cuerpo,file="data/cuerpo.rda")
