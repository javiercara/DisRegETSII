#'
#' Datos de la produccion de monoxido de carbono y el contenido de nicotina y alquitran de cigarrillos
#'
#' Datos de la produccion de monoxido de carbono y el contenido de nicotina y alquitran
#' en 25 marcas diferentes de cigarrillos americanos.
#'
#' @docType data
#'
#' @usage data(tabaco)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item alq: contenido en alquitran (mg)
#' \item nico: contenido en nicotina (mg)
#' \item co: monoxido de carbono CO (mg)
#' }
#'
#' @keywords datasets
#'
# @source
#'
#' @examples
#' data(tabaco)
#' \donttest{lm(co ~ alq + nico,data=tabaco)}
"tabaco"
