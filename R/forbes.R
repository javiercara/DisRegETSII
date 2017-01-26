#'
#' Datos de la presion atmosferica y temperatura de ebullicion del agua registrados por James D. Forbes (1857)
#'
#' En un articulo de 1857 un fisico escoces llamado James D. Forbes presento
#' una serie de experimentos realizados para estudiar la relación entre presion
#' atmosferica y punto de ebullicion del agua. Forbes sabia que la altitud podia
#' ser determinada a partir de la presion atmosferica medida con un barometro,
#' con menores presiones a medida que aumenta la altitud. A mediados del siglo XIX
#' los barometros eran instrumentos muy fragiles y Forbes penso que se podia sustituir
#' la medidas de la presion con medidas de la temperatura de ebullicion del agua.
#' Recogio datos de 17 emplazamientos en los Alpes y los montes de Escocia.
#' En cada lugar se  midio con un barometro la presion en pulgadas de mercurio (Pres)
#'  y la temperatura de ebullicion del agua en grados Fahrenheit (Temp) empleando un termometro.
#'
#' @docType data
#'
#' @usage data(forbes)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Pres: presion en pulgadas de mercurio
#' \item Temp: temperatura de ebullición del agua en grados Fahrenheit
#' }
#'
#' @keywords datasets
#'
#' @source Weisberg, S. (2005). Applied Linear Regression, 3rd edition. New York: Wiley
#'
#' @examples
#' data(forbes)
#' \donttest{lm(Pres ~ Temp,data=forbes)}
"forbes"
