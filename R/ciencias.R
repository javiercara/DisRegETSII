#'
#' Datos del numero de errores gramaticales en articulos cientificos
#'
#' Un investigador quiere estudiar el efecto del sexo (hombre, mujeres) y
#' tipo de formacion (ciencias, letras) en el dominio del ingles
#' escrito en profesores universitarios. Para ello se analiza el
#' numero de incorrecciones gramaticales en articulos cientificos
#' enviados a publicacion. Para combinacion de niveles de los
#' factores se han elegido al azar tres profesores. En la tabla
#' se proporciona el no de fallos detectados en articulos de 15
#' paginas.
#'
#' @docType data
#'
#' @usage data(ciencias)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item sexo: h=hombre, m=mujeres
#' \item form:  cc=ciencias, ls=letras
#' \item errores: numero de errores gramaticales
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(ciencias)
#' \donttest{aov(errores ~ sexo*form, data = ciencias)}
"ciencias"
