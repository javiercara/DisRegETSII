#'
#' Datos de superviviencia de roedores a los que se le habian suministrado diferentes venenos y antidotos
#'
#' Se pretende combatir los efectos de ciertos agentes toxicos.
#' Para ello, se analiza el efecto de tres venenos y cuatro antidotos en el tiempo de supervivencia
#' de unas ratas. Para el experimento se cogieron 48 animales y se asignaron al azar a cada uno
#' de los doce tratamientos resultantes de combinar venenos y antídotos. A cada rata se le
#' suministro una cierta cantidad de veneno y despues de un cierto tiempo se les administro el
#' antidoto. A partir de este momento se cuenta el tiempo de supervivencia del roedor.
#'
#' @docType data
#'
#' @usage data(venenos)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item ven: tipo de veneno suministrado ('I','II','III')
#' \item ant: tipo de antidoto suministrado ('A','B','C','D')
#' \item tiempo: tiempo de superviviencia del roedor (en unidades de 10 horas)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(venenos)
#' \donttest{aov(tiempo ~ ven*ant,data=venenos)}
"venenos"
