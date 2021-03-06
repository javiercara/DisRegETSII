#'
#' Datos del tiempo de combustion de cuatro fibras diferentes
#'
#' Se ha realizado un experimento para medir el tiempo (en segundos) de combustion
#' de unos retales de cuatro fibras diferentes.
#'
#' @docType data
#'
#' @usage data(fibras)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item tiempo: tiempo de combustion (segundos)
#' \item fibra: tipo de fibra (A,B,C,D)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(fibras)
#' \donttest{aov(tiempo ~ fibra)}
"fibras"
