#'
#' Datos del rendimiento de 4 tipos de semillas de centeno
#'
#' Se desea comparar el rendimiento de cuatro semillas A, B, C y D.
#' Un terreno se divide en 24 parcelas similares y se asigna al azar
#' cada semilla a 6 parcelas.
#'
#' @docType data
#'
#' @usage data(centeno)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item sem: tipo de semilla (A, B, C, D)
#' \item rend: rendimiento de cada parcela
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(centeno)
#' \donttest{aov(rend ~ sem)}
"centeno"
