#'
#' Datos de la presión atmosferica y temperatura de ebullición del agua  registrados por James D. Forbes (1857)
#'
#' En un artículo de 1857 un físico escocés llamado James D. Forbes presentó
#' una serie de experimentos realizados para estudiar la relación entre presión
#' atmosférica y punto de ebullición del agua. Forbes sabía que la altitud podía
#' ser determinada a partir de la presión atmosférica medida con un barómetro,
#' con menores presiones a medida que aumenta la altitud. A mediados del siglo XIX
#' los barómetros eran instrumentos muy frágiles y Forbes pensó que se podía sustituir
#' la medidas de la presión con medidas de la temperatura de ebullición del agua.
#' Recogió datos de 17 emplazamientos en los Alpes y los montes de Escocia.
#' En cada lugar se  midió con un barómetro la presión en pulgadas de mercurio (Pres)
#'  y la temperatura de ebullición del agua en grados Fahrenheit (Temp) empleando un termómetro.
#'
#' @docType data
#'
#' @usage data(forbes)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Pres: presión en pulgadas de mercurio
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
