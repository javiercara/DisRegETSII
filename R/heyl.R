#'
#' Datos la constante de gravitación universal G medidos por el físico americano Paul Renno Heyl
#'
#' Datos la constante de gravitación universal G medidos por el físico
#' americano Paul Renno Heyl (1872-1961) utilizando diferentes materiales para
#' su determinación
#'
#' @docType data
#'
#' @usage data(heyl)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item G: constante de gravitación universal (x 10^11 N·m2/kg2)
#' \item material: material empleado A=oro, B=platino, C=vidrio
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(heyl)
#' \donttest{aov(G ~ material)}
"heyl"
