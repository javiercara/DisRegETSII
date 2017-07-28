maquinas = read.table("data-raw/maquinas.txt",header=T)
maquinas$maq <- factor(maquinas$maq)
save(maquinas,file="data/maquinas.rda")
