defectos = read.table("data-raw/defectos.txt",header=T)
defectos$coche <- factor(defectos$coche)
save(defectos,file="data/defectos.rda")
