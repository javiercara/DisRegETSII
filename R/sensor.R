#'
#' Datos del contenido en CO en los gases de escape de diferentes automoviles
#'
#' Datos del contenido en CO en los gases de escape de diferentes automoviles
#' medidos con dos sensores diferentes, A y B
#'
#' @docType data
#'
#' @usage data(sensor)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item CO: contenido de CO
#' \item tiposensor: tipo de sensor (A, B)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(sensor)
#' \donttest{aov(CO ~ tiposensor)}
"sensor"
