#'
#' Datos del nivel de colesterol en la sangre
#'
#' Reduccion del nivel de colesterol en la sangre de 20 individuos (despues de
#' dos meses) que son asignados al azar a dos tipos de dieta, A y B.
#'
#' @docType data
#'
#' @usage data(colesterol)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item A: reduccion de los individuos asignados a la dieta A
#' \item B: reduccion de los individuos asignados a la dieta B
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(colesterol)
#' \donttest{t.test(colesterol$A,colesterol$B,var.equal=TRUE)}
"colesterol"
