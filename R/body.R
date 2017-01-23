#'
#' Datos de diversas variables medidas en el cuerpo humano
#'
#' Datos de 21 variables medidas en el cuerpo humano, entre otras, peso, altura y género, de 507 individuos.
#' Los datos fueron recogidos entre personas que acudían frecuentemente al gimnasio en USA,
#' la mayoría de ellos entre 20 y 40 años.
#'
#' @docType data
#'
#' @usage data(body)
#'
#' @format Lista con los siguientes campos:
#' \itemize{
#' \item Gender: mujeres=0, hombres=1
#' \item Age
#' \item Weight
#' \item Height
#' \item Shoulder_Breadth
#' \item Pelvic_Breadth
#' \item Hip_Breadth
#' \item Chest_Depth
#' \item Chest_Diameter
#' \item Elbow_Diameter
#' \item Wrist_Diameter
#' \item Knee_Diameter
#' \item Ankle_Diameter
#' \item Shoulder_Girth
#' \item Chest_Girth
#' \item Waist_Girth
#' \item Abdominal_Girth
#' \item Hip_Girth
#' \item Thigh_Girth
#' \item Bicep_Girth
#' \item Forearm_Girth
#' \item Knee_Girth
#' \item Calf_Girth
#' \item Ankle_Girth
#' \item Wrist_Girth
#' }
#'
#' @keywords datasets
#'
#' @source Exploring Relationships in Body Dimensions,
#' Grete Heinz,Louis J. Peterson,Roger W. Johnson, Carter J. Kerk,
#' Journal of Statistics Education, Volume 11, Number 2 (2003),
#' www.amstat.org/publications/jse/v11n2/datasets.heinz.html
#'
#' @examples
#' data(body)
#' \donttest{lm(Weight ~ Height,data=body)}
"body"
