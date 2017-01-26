#'
#' Datos de la velocidad de la luz registrados por Michelson y Newcomb
#'
#' En 1879, el físico norteamericano Albert A. Michelson tomó 100 medidas de la
#' velocidad de la luz en el aire empleando una modificación del método propuesto
#' por el físico francés Foucault. En 1882, Simon Newcomb midió el tiempo que una
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
