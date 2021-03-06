#'
#' Datos de Forced Expiratory Volume (FEV) en 654 individuos
#'
#' Muestra de 654 jovenes entre 3 y 19 años recogidos en Boston (USA)
#' a finales de los 70. Se desea ver la relacion entre la capacidad pulmonar (FEV)
#' y fumar.
#'
#' @docType data
#'
#' @usage data(fev)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item age: años del individuo
#' \item fev:  Forced Expiratory Volume (litros)
#' \item ht: estatura (pulgadas)
#' \item sex: mujer=0, hombre=1
#' \item smoke: No-fumador=0, fumador=1
#' }
#'
#' @keywords datasets
#'
#' @source Rosner, B. (1999), Fundamentals of Biostatistics, 5th Ed., Pacific Grove, CA: Duxbury
#'
#' @examples
#' data(fev)
#' \donttest{lm(fev ~ ht+age,data=fev)}
"fev"
