#'
#' Datos de la altura de madres e hijas en Inglaterra en el periodo 1893 a 1898
#'
#' Karl Pearson organized the collection of data on over 1100 families en England in the period 1893 to
#' 1898. This particular data ser sirves the heights in inces of mothers and their daughters, with up to two
#' daughters per mother. All daughters are at least age 18, and all mothers are younger than 65. Data were
#' given in the source as a frequency table to the nearest inch. Rounding error has been added to remove
#' discreteness from graph.
#'
#' @docType data
#'
#' @usage data(heights)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Mheight: altura de las madres (pulgadas)
#' \item Dheight: altura de las hijas (pulgadas)
#' }
#'
#' @keywords datasets
#'
#' @source Weisberg, S. (2005). Applied Linear Regression, 3rd edition. New York: Wiley
#'
#' @examples
#' data(heights)
#' \donttest{lm(Dheight ~ Mheight,data=heights)}
"heights"
