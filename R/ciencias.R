#'
#' Datos del número de errores gramaticales en artículos científicos
#'
#' Un investigador quiere estudiar el efecto del sexo (hombre, mujeres) y
#' tipo de formación (ciencias, letras) en el dominio del inglés
#' escrito en profesores universitarios. Para ello se analiza el
#' número de incorrecciones gramaticales en artículos científicos
#' enviados a publicación. Para combinación de niveles de los
#' factores se han elegido al azar tres profesores. En la tabla
#' se proporciona el no de fallos detectados en artículos de 15
#' páginas.
#'
#' @docType data
#'
#' @usage data(ciencias)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item sexo: h=hombre, m=mujeres
#' \item form:  cc=ciencias, ls=letras
#' \item errores: número de errores gramaticales
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(ciencias)
#' \donttest{aov(errores ~ sexo*form,data=ciencias)}
"ciencias"
