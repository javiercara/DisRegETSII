#'
#' Datos de 393 vehiculos
#'
#' Datos de 393 vehiculos
#'
#' @docType data
#'
#' @usage data(coches2)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Consumo:
#' \item CC: cilindrada
#' \item CV: potencia
#' \item Peso:
#' \item Acel: tiempo empleado en alcanzar los 100 km/h
#' \item Ano: año de fabricacion
#' \item Origen: pais de fabricacion. 1=USA, 2=Europa, 3=Japon
#' \item Cilindros
#' }
#'
#' @keywords datasets
#'
#' @source
#'
#' @examples
#' data(coches2)
#' \donttest{lm(Consumo ~ Peso + CC + CV, data = coches2)}
"coches2"
