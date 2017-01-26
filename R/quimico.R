#'
#' Datos del rendimiento de una reaccion quimica
#'
#' Se pretende analizar el rendimiento de una reaccion quimica dependiendo
#' de los siguientes factores: concentracion, catalizador y temperatura.
#'
#' @docType data
#'
#' @usage data(quimico)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item rend: rendimiento de la reaccion quimica
#' \item conc: concentracion (4\%, 6\%, 8\%, 10\%)
#' \item temp: temperatura (T1, T2)
#' \item cat: catalizador (C1, C2, C3)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(quimico)
#' \donttest{aov(rend ~ con*temp*cat,data=quimico)}
"quimico"
