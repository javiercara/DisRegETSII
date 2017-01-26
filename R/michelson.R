#'
#' Datos de la velocidad de la luz registrados por Michelson y Newcomb
#'
#' En 1879, el fisico norteamericano Albert A. Michelson tomo 100 medidas de la
#' velocidad de la luz en el aire empleando una modificacion del metodo propuesto
#' por el fisico frances Foucault. En 1882, Simon Newcomb midio el tiempo que una
#' señal luminosa tardaba en recorrer una distancia de 7.442 metros.
#'
#' @docType data
#'
#' @usage data(michelson)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Velocidad: velocidad de la luz (x 1000 km/s)
#' \item MvN: M=datos registrados por Michelson, N=datos registrados por Newcomb
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(michelson)
#' \donttest{aov(Velocidad ~ MvN)}
"michelson"
