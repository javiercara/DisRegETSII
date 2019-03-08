#' Guarda todos los datos del paquete en formato txt
#'
#' @keywords txt
#' 
#' @param carpeta nombre de la carpeta donde se guardan los archivos txt. Por defecto
#' el nombre de la carpeta es DisRegETSII
#'
#' @export
#'
#' @examples
#' \donttest{guardar_txt()}
#' \donttest{guardar_txt("datos")}
#' \donttest{guardar_txt("../datos")}
#'
guardar_txt <- function(carpeta="DisRegETSII"){
  
  # lista de los datos disponibles en el paquete 
  info = data(package="DisRegETSII")
  lista_datos = info$results[,"Item"]
  
  if (!dir.exists(carpeta)){
    dir.create(carpeta)
  }
  
  for (n in 1:length(lista_datos)){
    datos = lista_datos[n]
    write.table(eval(as.name(datos)), file = paste(carpeta,"/",datos,".txt",sep=""),
                row.names = F, quote = F, sep = " ")
  }
  
}