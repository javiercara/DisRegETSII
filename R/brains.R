#'
#' Datos del peso del cuerpo y del peso del cerebro de 62 mamíferos
#'
#' Se proporciona el peso medio del cuerpo y del peso cerebro para 62 especies de mamíferos.
#'
#' @docType data
#'
#' @usage data(cerezos)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item BrainWt: peso del cerebro (gramos)
#' \item BodyWt: peso del cuerpo (kilogramos)
#' }
#'
#' @keywords datasets
#'
#' @source Allison, T. and Cicchetti, D. (1976). Sleep in mammals: Ecology and constitutional correlates. Science, 194, 732-734.
#' Weisberg, S. (2005). Applied Linear Regression, 3rd edition. New York: Wiley
#'
#' @examples
#' data(fev)
#' \donttest{lm(BrainsWt ~ BodyWt,data=brains)}
"brains"
