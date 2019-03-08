#'
#' Datos del volumen de madera de una especie de cerezos junto con datos de altura y diametro del tronco
#'
#' Datos del volumen de madera de 31 troncos la especie "cerezo negro" en funcion de la altura del tronco
#' y del diametro del mismo a un metro sobre el suelo.
#'
#' @docType data
#'
#' @usage data(cerezos)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item altura: altura del tronco (pies)
#' \item altura: diametro del tronco a un metro del suelo (pies)
#' \item volumen: volumen del tronco (pies^3)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(cerezos)
#' \donttest{lm(volumen ~ diametro + altura,data=cerezos)}
"cerezos"
