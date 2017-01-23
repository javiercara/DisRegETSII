#'
#' Datos del volumen de madera de una especie de cerezos junto con datos de altura y diámetro del tronco
#'
#' Datos del volumen de madera de 31 troncos la especie “cerezo negro” en función de la altura del tronco
#' y del diámetro del mismo a un metro sobre el suelo.
#'
#' @docType data
#'
#' @usage data(cerezos)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item altura: altura del tronco (pies)
#' \item altura: diámetro del tronco a un metro del suelo (pies)
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
