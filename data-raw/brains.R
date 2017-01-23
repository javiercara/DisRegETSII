brains = read.table("data-raw/brains.txt",header=T,row.names=1)
save(brains,file="data/brains.rda")
