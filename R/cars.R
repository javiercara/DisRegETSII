#'
#' Datos de 391 vehiculos
#'
#' Datos de 391 vehiculos
#'
#' @docType data
#'
#' @usage data(cars)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item mpg: coonsumo en millas por galon. Para cambiar a litros cada 100Km (l100) -> l100 = 235.1/mpg
#' \item engine: cilindrada
#' \item horse: potencia
#' \item weight: peso
#' \item accel: tiempo empleado en alcanzar los 100 km/h
#' \item origin: pais de fabricacion. 1=USA, 2=Europa, 3=Japon
#' \item cylinders: Cilindros
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(cars)
#' \donttest{lm(mpg~weight+engine+horse,data=cars)}
"cars"
