coches = read.table("data-raw/coches.txt",header=T)
devtools::use_data(coches, overwrite = TRUE)
