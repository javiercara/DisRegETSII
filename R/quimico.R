#'
#' Datos del rendimiento de una reacción química
#'
#' Se pretende analizar el rendimiento de una reacción química dependiendo
#' de los siguientes factores: concentración, catalizador y temperatura.
#'
#' @docType data
#'
#' @usage data(quimico)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item rend: rendimiento de la reacción química
#' \item conc: concentración (4\%, 6\%, 8\%, 10\%)
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
