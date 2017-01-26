#'
#' Datos del tiempo de descarga de pilas
#'
#' Datos del tiempo hasta la descarga de dos marcas de pilas y
#' se desea contrastar si en base a esta variable las dos marcas son distintas.
#'
#' @docType data
#'
#' @usage data(pilas2b)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Tdescarga: tiempo de descarga (segundos)
#' \item marca: marca de la pila (ENERGIZER,ULTRACELL)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(pilas2b)
#' \donttest{aov(Tdescarga ~ marca)}
"pilas2b"
