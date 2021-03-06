#'
#' Datos del coste de fabricacion de cemento
#'
#' Se desea estudiar el efecto de la Fluorita en la reduccion del coste
#' energetico en la fabricacion de cemento. Se emplean 6 mezclas distintas
#' de materias primas.
#'
#' @docType data
#'
#' @usage data(fluorita)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item fluo: contenido en fluorita (0\%, 1\%, 2\%, 3\%, 4\%)
#' \item mez: tipo de mezcla (1, 2, 3, 4, 5, 6)
#' \item cost: coste de fabricacion del cemento
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(fluorita)
#' \donttest{aov(cost ~ fluo + mez,data=fluorita)}
"fluorita"
