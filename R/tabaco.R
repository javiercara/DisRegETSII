#'
#' Datos de la producción de monóxido de carbono y el contenido de nicotina y alquitrán de cigarrillos
#'
#' Datos de la producción de monóxido de carbono y el contenido de nicotina y alquitrán
#' en 25 marcas diferentes de cigarrillos americanos.
#'
#' @docType data
#'
#' @usage data(tabaco)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item alq: contenido en alquitrán (mg)
#' \item nico: contenido en nicotina (mg)
#' \item co: monóxido de carbono CO (mg)
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
